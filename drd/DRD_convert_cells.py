###########################################
# Title:  DRD_convert_cells.py
# Author: Michal Gorywoda
# Date:   31.10.2023
###########################################

import sys, getopt
import os
import numpy as np
import argparse
import re

class Port_Class:
    def __init__(self, variant_name, master_name ,direction):
        self.master_name = master_name
        self.variant_name = variant_name
        self.direction = direction

    def __str__(self):
        return "Port: " + self.master_name + " " + self.variant_name + " " + self.direction

    def __repr__(self):
        return self.__str__()
    

class Variant_Class:
    def __init__(self, name, master, inputs_num, inputs, output):
        self.name = name
        self.master = master
        self.inputs_num = inputs_num
        self.inputs = inputs
        self.output = output

    def __str__(self):
        return "Variant: " + self.name + " " + self.master + " " + self.inputs_num + " " + self.inputs + " " + self.output

    def __repr__(self):
        return self.__str__()


#Input arguments

parser = argparse.ArgumentParser(description='DRD_convert_cells. Usage guide:')

parser.add_argument('-n', "--netlist", dest="netlist_file_name", help="Netlist file")
parser.add_argument('-c', "--cells", dest="cell_file_name", help="Cell list file")
parser.add_argument('-bb', "--blackbox", dest="bb_file_name", help="Converter blackbox file")
parser.add_argument('-o', "--output", dest="output_file_name", help="Output file")



changed_cells_num = 0
module_num = 0
args = parser.parse_args()
print("Start")
print(args.netlist_file_name)
print(args.cell_file_name)
print(args.bb_file_name)
print(args.output_file_name)

netlist_file_name = args.netlist_file_name
bb_file_name = args.bb_file_name
#Extract just the name, so that it doesn't contain path and extension
cell_file_name = args.cell_file_name
output_file_name = args.output_file_name
#print(re.split("./", netlist_file_name))


#Open file with master cells, logic variants
variants = []

cell_file = open(cell_file_name, "r")
for line in cell_file:
        print(line)
        if(line[0] == "#" or line[0] == "\n"):
            print("Comment")
        else:
            variant_name = line.split(',')[0]
            master_name = line.split(',')[1]
            inputs_num = line.split(',')[2]
            inputs = []
            for i in range(int(inputs_num)):
                subline = line.split(',')[3+i]
                inputs.append(Port_Class(subline.split(':')[0],subline.split(':')[1] ,"input"))
            subline = line.split(',')[3+int(inputs_num)]
            output = Port_Class(subline.split(':')[0],subline.split(':')[1] ,"output")
            #print("Variant: "+line.split()[0]+" Master: "+line.split()[1]+" Inputs: "+line.split()[2]+" "+line.split()[3]+" "+line.split()[4]+" Output: "+line.split()[5])
            print("Variant: "+variant_name+" Master: "+master_name+" Inputs: "+inputs_num)
            for i in range(int(inputs_num)):
                print(inputs[i].variant_name+" "+inputs[i].master_name)
            print("Output: "+output.variant_name+" "+output.master_name)
            variants.append(Variant_Class(variant_name, master_name, inputs_num, inputs, output))
cell_file.close()

for variant in variants:
    print(variant.name+" "+variant.master+" "+variant.inputs_num+" ")
    for i in range(int(variant.inputs_num)):
        print(variant.inputs[i].variant_name+" "+variant.inputs[i].master_name)
    print("Output: "+variant.output.variant_name+" "+variant.output.master_name)


#Create a list of masters, assign variants

#Open netlist file
#new_netlist_file = netlist_file_name+"_master.v"
netlist_file = open(netlist_file_name, "r")
#Write new netlist file
output_file_name = open(output_file_name, "w")
#new_netlist_file = open(new_netlist_file, "w")
#Iterate through netlist lines
netlist_file_list = re.split(r';', netlist_file.read())
netlist_file.close()
print(netlist_file)
#exit()
for line in netlist_file_list:
    line = line+";"
    for variant in variants:
        if(re.search(r'\b'+variant.name+r'\b', line)):
            print("Found cell: "+line)
            changed_cells_num += 1
            line = line.replace(variant.name, variant.master)
            for i in range(int(variant.inputs_num)):
                #Add that damn dot 
                searched_variant = '.'+variant.inputs[i].variant_name
                searched_variant = searched_variant.replace(" ", "")
                target_variant = '.'+variant.inputs[i].master_name
                target_variant = target_variant.replace(" ", "")
                print("Looking for: "+searched_variant+" in line: "+line)
                print("Target: "+target_variant)
                #if(re.search(r'\b'+searched_variant+r'\b', line)):
                if(re.search(searched_variant, line)):
                    line = line.replace(searched_variant, target_variant)
                    print("Found port: "+variant.inputs[i].variant_name+" Replaced: "+variant.inputs[i].master_name)
                else :
                    print("ERROR: Input not found:"+variant.inputs[i].variant_name)

            searched_variant = '.'+variant.output.variant_name
            searched_variant = searched_variant.replace(" ", "")
            target_variant = '.'+variant.output.master_name
            target_variant = target_variant.replace(" ", "")
            if(re.search(searched_variant, line)):
                line = line.replace(searched_variant, target_variant)
                print("Found port: "+variant.output.variant_name+" Replaced: "+variant.output.master_name)
            else :
                print("ERROR: Output not found:"+variant.output.variant_name)
            print("Replaced: "+line)
            break
        #else :
            #print("################ Not found: "+line+" ################ ")
    if(re.search(r" \);", line)):
        module_num += 1

    if(re.search("endmodule", line)):
        print("End of module")
        if(re.search("module", line) == None):
            line = line.replace(";","")
    #new_netlist_file.write(line)
    output_file_name.write(line)

#Go through instance variant cell names in netlist  and replace with corresponding master

#Read line of file - if there is a cell name, check if it is a variant, if yes, replace with master
#Modify line
#Write line to new netlist file
#Go to next line


# Add converter module black box
# SE2DIFF
conv_bb_file = bb_file_name
#Write new netlist file
conv_bb_file = open(conv_bb_file, "r")

#print(conv_bb_file.read())

#new_netlist_file.write(conv_bb_file.read())
output_file_name.write(conv_bb_file.read())

#new_netlist_file.close()
output_file_name.close()
conv_bb_file.close()

print("Cells changed: "+str(changed_cells_num))
print("Cell number: "+str(module_num))
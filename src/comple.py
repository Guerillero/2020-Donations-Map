import os

hdr = open("header.txt", 'r')
fout = open("data.txt", 'w')

#Header
fout.write(hdr.readline() + "\n")

files = os.listdir(".\Raw")

print files

for fi in files:
    fin = open(".\\Raw\\" + fi, 'r')
    for line in fin:
        fout.write(line)

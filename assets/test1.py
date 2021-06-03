import glob;
import sys;


NAME = "//Quin Proctor"
ID = "//1505975"
tsFiles = glob.glob('./src/**/*.ts', recursive=True)
for file in tsFiles:
    f = open(file)
    name = f.readline().rstrip('\n')
    id = f.readline().rstrip('\n')
    f.close()
    if(name != NAME or id != ID):
        print("Comments missing in file: " + file)
        sys.exit(0)

print('1')
sys.exit(0)
        







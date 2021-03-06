#Makefile assignment

CC = gcc
CFLAGS = -Wall
ObjFiles = driver.o file1.o file2.o
#for windows, the Target needs to end in .exe or it will create just a file. ex: output.exe
Target = makefileOutput

all: $(Target)

$(Target): $(ObjFiles)
	$(CC) $(CFLAGS) -o $(Target) $(ObjFiles)

driver.o: driver.c headers.h
	$(CC) -c driver.c

file1.o: file1.c headers.h
	$(CC) -c file1.c

file2.o: file2.c headers.h
	$(CC) -c file2.c

.PHONY: clean

clean:
	-rm -f $(ObjFiles) $(Target)
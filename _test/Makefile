CFLAGS=-Wall -Wextra -I. -I.. -I$(ORACLE_HOME)/oci/include
CC=gcc

all: ../tq84_oci.o 01_create_table.exe 02_insert_table.exe 03_select_table.exe 04_describe_table.exe read_pipe.exe

%.exe: %.o ../tq84_oci.o
	gcc $(CFLAGS) -I.. $^ -o $@ $(ORACLE_HOME)/bin/oci.dll

../tq84_oci.o: ../tq84_oci.c
	gcc $(CFLAGS) $^ -c $@

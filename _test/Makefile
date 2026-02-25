#
#  2026-02-25:
#
#     Using the Oracle's instant client as downloaded from
#        https://www.oracle.com/database/technologies/instant-client/winx64-64-downloads.html
#
#     In an earlier version, I found the OCI headerfile under
#        $(ORACLE_HOME)/oci/include
#     and the oci.dll under
#        $(ORACLE_HOME)/bin/oci.dll

INSTCLIENTDIR=C:\tools\oracle\instantclient_23_0

CFLAGS=-Wall -Wextra -I. -I.. -I$(INSTCLIENTDIR)/sdk/include


all: ../tq84_oci.o 01_create_table.exe 02_insert_table.exe 03_select_table.exe 04_describe_table.exe read_pipe.exe

%.exe: %.o ../tq84_oci.o
	gcc $(CFLAGS) -I.. $^ -o $@ $(INSTCLIENTDIR)/oci.dll

../tq84_oci.o: ../tq84_oci.c
	gcc $(CFLAGS) $^ -c -o $@

clean:
	del ..\tq84_oci.o *.exe

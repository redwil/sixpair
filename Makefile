# from https://github.com/lostella/SimpleMakefile
# using pkg-config on opensuse 15.4
CC=gcc
TARGET=sixpair
SOURCES=sixpair.c
CFLAGS=-O3 $(shell pkg-config --cflags libusb)
LFLAGS=$(shell pkg-config --libs libusb)

################################################################################
### DO NOT EDIT THE FOLLOWING LINES ############################################

# define list of objects
OBJSC=$(SOURCES:.c=.o)
OBJS=$(OBJSC:.cpp=.o)

# the target is obtained linking all .o files
all: $(SOURCES) $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(LFLAGS) $(OBJS)  -o $(TARGET)

purge: clean
	rm -f $(TARGET)

clean:
	rm -f *.o

################################################################################
################################################################################

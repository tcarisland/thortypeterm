CC := gcc
CFLAGS := -Wall -g  # -g adds debug symbols
DEPS := functions.h
OBJ := hello.o functions.o

# Pattern rule: Compile .c to .o, depending on the header
%.o: %.c $(DEPS)
	$(CC) $(CFLAGS) -c $< -o $@

# Default target: Build the executable
all: hello

# Link all .o files into hello executable
hello: $(OBJ)
	$(CC) $(OBJ) -o $@

# Clean up
clean:
	rm -f $(OBJ) hello

# Phony targets (tells make these aren't files)
.PHONY: all clean
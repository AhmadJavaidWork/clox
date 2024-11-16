CC = gcc
CFLAGS = -g
DEPS = include/*.h
OBJ = src/*.c

%.o: %.c include/$(DEPS)
	$(CC) $(CFLAGS) -c -o $@ $<
	
clox: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^
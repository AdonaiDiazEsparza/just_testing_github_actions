# Makefile para compilar proyecto C en Linux

# Compilador
CC = gcc

# Flags de compilación
CFLAGS = -I./../include -Wall -Wextra -g

# Archivos fuente
SRCS = main.c

# Archivos objeto
OBJS = $(SRCS:.c=.o)

# Nombre del ejecutable
TARGET = program

# Regla principal (se ejecuta con 'make')
all: clean $(TARGET) execute

# Regla para enlazar los objetos y crear el ejecutable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

# Regla para compilar cada archivo .c a .o
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Limpiar archivos generados (se ejecuta con 'make clean')
clean:
	rm -f $(OBJS) $(TARGET)

execute:
	./$(TARGET)
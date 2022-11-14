CC=g++					# C compiler

CFLAGS=-I. -g -Wall
DEPS= header/*.h	
OBJ = *.cpp source/*.cpp

all: $(OBJ)
	@$(CC) -o prog $^ $(CFLAGS) $(LIBS)

o: %.c $(DEPS)
	@$(CC) -c -o $@ $< $(CFLAGS)

run:
	@read -p "Insert the size of the field: "  SIZE; \
	read -p "Insert the quantity of mines: " QTT;\
	./prog $${NOME} $${QTT};

clean:
	@rm -f *.o prog
	
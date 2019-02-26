
MODULE = $(notdir $(CURDIR))

all: ./$(MODULE)
	
./$(MODULE): $(MODULE).c
	$(CC) -o $@ $^
	
$(MODULE).c: $(MODULE).rl
	ragel $<

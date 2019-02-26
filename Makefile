
MODULE = $(notdir $(CURDIR))

all: ./$(MODULE)
	./$<
	
./$(MODULE): $(MODULE).c
	$(CC) -g2 -Og -o $@ $^
	
$(MODULE).c: $(MODULE).rl
	ragel -G2 -o $@ $<

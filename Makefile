
MODULE = $(notdir $(CURDIR))

all: ./$(MODULE) $(MODULE).dot 
	./$<
	
./$(MODULE): $(MODULE).c
	$(CC) -g2 -Og -o $@ $^
	
$(MODULE).c: $(MODULE).rl Makefile
	ragel -G2 -p -o $@ $<

$(MODULE).dot: $(MODULE).rl Makefile
	ragel -pV -o $@ $<

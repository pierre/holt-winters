OBJDIR := build
OBJS := $(addprefix $(OBJDIR)/,holt-winters.o)

$(OBJDIR)/%.o : %.c
	gcc -O1 -ggdb -Wall -Wextra $(OUTPUT_OPTION) $<

all: $(OBJS)

clean:
	rm -rf $(OBJDIR)/*.o

$(OBJS): | $(OBJDIR)

$(OBJDIR):
	mkdir $(OBJDIR)

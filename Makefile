OBJDIR := build
OBJS := $(addprefix $(OBJDIR)/,holt-winters.o)

$(OBJDIR)/%.o : %.c
	gcc $(OUTPUT_OPTION) $<

all: $(OBJS)

clean:
	rm -rf $(OBJDIR)/*.o

$(OBJS): | $(OBJDIR)

$(OBJDIR):
	mkdir $(OBJDIR)

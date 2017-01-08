obj-m := hello.o
KDIR = /usr/src/$(uname -r)/

all:
	$(MAKE) -C $(KDIR) M=$(PWD)

.PHONY:clean
clean:
	rm -f *.mod.c *mod.o *,ko *.o *.tmp_versions

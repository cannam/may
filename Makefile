
YETI_JARPATH	:= /usr/local/lib/yeti
YETI_JARS	:= asm-3.1r yeti yeti-lib

CLASSPATH	:= $(patsubst %,$(YETI_JARPATH)/%.jar,$(YETI_JARS))
CLASSPATH	:= $(shell echo $(CLASSPATH) | tr ' ' ':')

SOURCES		:= \
	audio.yeti






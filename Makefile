ALL_SOURCES := $(wildcard yetilab/*.yeti yetilab/*/*.yeti yetilab/*/*/*.yeti)
TEST_SOURCES := $(wildcard yetilab/test/*.yeti yetilab/*/test/*.yeti yetilab/*/*/test/*.yeti)
SOURCES := $(filter-out $(TEST_SOURCES), $(ALL_SOURCES))

bin/.testrun:	yetilab.jar $(TEST_SOURCES)
	./bin/yc yetilab/test/all.yeti | tee $@.out
	@grep -qv passed $@.out || touch $@

yetilab.jar:	$(SOURCES)
	./bin/yc --no-yetilab-jar -d classes -doc doc $^
	jar cf $@ -C classes yetilab 

clean:	
	rm -rf com bin/.testrun classes

distclean:	clean
	rm -f yetilab.jar

TEST_SOURCES := $(wildcard yetilab/test/*.yeti yetilab/*/test/*.yeti yetilab/*/*/test/*.yeti)
SOURCES := $(filter-out $(TESTS), $(wildcard yetilab/*.yeti yetilab/*/*.yeti yetilab/*/*/*.yeti))

test/.run:	yetilab.jar $(TEST_SOURCES)
	./bin/yc yetilab/test/all.yeti | tee $@.out
	@grep -qv passed $@.out || touch $@

yetilab.jar:	$(SOURCES)
	./bin/yc -d classes -doc doc $^
	jar cf $@ -C classes yetilab 

clean:	
	rm -rf com test/.run

distclean:	clean
	rm -f yetilab.jar

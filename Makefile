ALL_SOURCES := $(wildcard may/*.yeti may/*/*.yeti may/*/*/*.yeti)
TEST_SOURCES := $(wildcard may/test/*.yeti may/*/test/*.yeti may/*/*/test/*.yeti)
SOURCES := $(filter-out $(TEST_SOURCES), $(ALL_SOURCES))

bin/.testrun:	may.jar $(TEST_SOURCES)
	./bin/yc may/test/all.yeti | tee $@.out
	@grep -qv passed $@.out || touch $@

may.jar:	$(SOURCES)
	./bin/yc --no-may-jar -d classes -doc doc $^
	jar cf $@ -C classes may 

clean:	
	rm -rf com bin/.testrun classes

distclean:	clean
	rm -f may.jar

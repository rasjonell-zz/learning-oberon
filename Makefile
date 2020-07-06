VOC = /opt/voc/bin/voc

BUILD_DIR = build
export BUILD_DIR

all:
	for dir in `find . -maxdepth 1 -mindepth 1 -type d -not -path "./.git"`; \
	do \
		make -C $$dir all; \
	done

clean:
	for dir in `find . -maxdepth 1 -mindepth 1 -type d -not -path "./.git"`; \
	do \
		make -C $$dir clean; \
	done


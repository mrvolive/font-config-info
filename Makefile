LIBS=fontconfig gio-2.0 gtk+-3.0 x11
WARNS=-Wall -Wextra

font-config-info: font-config-info.c
	gcc -g -Wall -std=c99 font-config-info.c -o font-config-info \
	  ${WARNS} \
	  `pkg-config --cflags ${LIBS}` \
	  `pkg-config --libs ${LIBS}`

all: font-config-info

clean:
	rm -f font-config-info

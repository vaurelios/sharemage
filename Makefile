SHAREMAGE_SOURCES = sharemage.c

## Linux variables
CC = gcc
LIBS = -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lpangocairo-1.0 \
			-lgdk_pixbuf-2.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 \
			-lpurple -lglib-2.0
CFLAGS = -pthread -g -O2 -pipe -shared -fPIC
INCLUDES = -I/usr/include/pidgin -I/usr/include/gtk-2.0 -I/usr/include/libpurple \
			-I/usr/lib/gtk-2.0/include -I/usr/include/atk-1.0 -I/usr/include/cairo \
			-I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/glib-2.0 \
			-I/usr/lib/glib-2.0/include -I/usr/include/pixman-1 -I/usr/include/freetype2 \
			-I/usr/include/libpng15 -I/usr/include/harfbuzz -I.

## WIN32 variables
WIN32_CC = gcc
WIN32_LIBS = -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lpangocairo-1.0 \
			-lgdk_pixbuf-2.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 \
			-lpurple -lglib-2.0
WIN32_CFLAGS = -pthread -g -O2 -pipe -shared -fPIC
WIN32_INCLUDES = -I/usr/include/pidgin -I/usr/include/gtk-2.0 -I/usr/include/libpurple \
			-I/usr/lib/gtk-2.0/include -I/usr/include/atk-1.0 -I/usr/include/cairo \
			-I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/glib-2.0 \
			-I/usr/lib/glib-2.0/include -I/usr/include/pixman-1 -I/usr/include/freetype2 \
			-I/usr/include/libpng15 -I/usr/include/harfbuzz -I.

all: sharemage.so

sharemage.so:
	$(CC) ${CFLAGS} ${INCLUDES} ${LIBS} -o sharemage.so

sharemage.dll:
	$(WIN32_CC) ${WIN32_CFLAGS} ${WIN32_INCLUDES} ${WIN32_LIBS} -o $@

clean:
	rm *.so

install:
	@echo "To install this plugin please copy file sharemage.so(.dll) to directory:"
	@echo "~/.purple/plugins on linux"
	@echo "%APPDATA%\.purple\plugins on windows"


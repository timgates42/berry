# berry version
__THIS_VERSION__ = 0.1.7
__WINDOW_MANAGER_NAME__ = "berry"

NAME_DEFINES = -D__THIS_VERSION__=\"$(__THIS_VERSION__)\" \
			   -D__WINDOW_MANAGER_NAME__=\"$(__WINDOW_MANAGER_NAME__)\" \
			   

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

# Xinerama, comment if you don't want it
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA

# freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC = /usr/include/freetype2
# OpenBSD (uncomment)
#FREETYPEINC = ${X11INC}/freetype2

# includes and libs
INCS = -I${X11INC} -I${FREETYPEINC}
LIBS = -L${X11LIB} -lX11 ${XINERAMALIBS} ${FREETYPELIBS}

# debug
#DEBUG_CPPFLAGS = -DDEBUG
#DEBUG_CFLAGS   = -g

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=2 -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS} ${DEBUG_CPPFLAGS}
#CFLAGS   = -g -std=c99 -pedantic -Wall -O0 ${INCS} ${CPPFLAGS} ${DEBUG_CFLAGS}
CFLAGS   = -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os ${INCS} ${CPPFLAGS} ${DEBUG_CFLAGS} $(NAME_DEFINES)
LDFLAGS  = ${LIBS}

# Solaris
#CFLAGS  = -fast ${INCS} -DVERSION=\"${VERSION}\"
#LDFLAGS = ${LIBS}

# compiler and linker
CC = cc

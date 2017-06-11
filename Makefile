PREFIX	=/opt
BINDIR	=${PREFIX}/bin

LANGS	=en

all:	lang

clean:

distclean clobber: clean

install: lang
	install -d ${BINDIR}
	install -c lang ${BINDIR}/
	cd ${BINDIR} && ( ${RM} ${LANGS}; ln -s ./lang ${LANGS} )

uninstall:
	cd ${BINDIR} && ${RM} lang ${LANGS}

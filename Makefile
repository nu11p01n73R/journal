.PHONY: install uninstall

install: ${CURDIR}/journal.sh
	ln -s ${CURDIR}/journal.sh /usr/local/bin/jrnl 

uninstall: /usr/local/bin/jrnl
	rm /usr/local/bin/jrnl


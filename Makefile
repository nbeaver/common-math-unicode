TXT:=common-unicode-symbols.txt
HTML_TEMPLATE:=template.html
HTML_OUT:=index.html
$(HTML_OUT) : $(HTML_TEMPLATE) $(TXT)
	m4 $< > $@

.PHONY: check-html
check-html : $(HTML_OUT)
	tidy -errors -quiet $(HTML_OUT)

.PHONY: clean
clean :
	rm -f -- $(HTML_OUT)

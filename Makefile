HTML_TEMPLATE:=template.html
HTML_OUT:=common-unicode-symbols.html
$(HTML_OUT) : $(HTML_TEMPLATE)
	m4 $< > $@

check-html : $(HTML_OUT)
	tidy -errors -quiet $(HTML_OUT)

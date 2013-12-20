
build: components tags-theme-simple.css
	@component build --dev

tags-theme-simple.css: index.less
	@lessc index.less > tags-theme-simple.css

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js

.PHONY: clean

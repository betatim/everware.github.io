.DEFAULT_GOAL=html

node-deps:
	npm install

bower:
	node_modules/.bin/bower install --allow-root --config.interactive=false

less: bower
	node_modules/.bin/lessc --clean-css \
		--source-map \
		--source-map-basepath=$(CURDIR) \
		--source-map-rootpath=../ \
		less/style.less css/style.min.css

html: less 

#!/bin/bash

version="/* Grid CSS V0.0.1 */\n\n"
postcss="./node_modules/.bin/postcss"


if [[ $1 = "build" ]]; then
	$( $postcss src/index.css \
	   --output grid.dev.css \
	   --use postcss-import autoprefixer postcss-nested);

	$( $postcss src/index.css \
	   --output grid.css --no-map\
	   --use postcss-import autoprefixer postcss-nested cssnano);

	$( $postcss src/debug.css \
	   --output grid.debug.css --no-map\
	   --use autoprefixer postcss-nested cssnano);

	sed -i "" "1s;^;$version;" grid.dev.css;
	sed -i "" "1s;^;$version;" grid.css;
	sed -i "" "1s;^;$version;" grid.debug.css;
fi

if [[ $1 = "watch" ]]; then
	$( $postcss src/index.css \
	   --output grid.dev.css --watch \
	   --use postcss-import autoprefixer postcss-nested);
	
fi

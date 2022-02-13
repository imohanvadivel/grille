#!/bin/bash

version="/* Grille V1.0.2 */\n\n"
postcss="./node_modules/.bin/postcss"


if [[ $1 = "build" ]]; then
	$( $postcss src/index.css \
	   --output grille.dev.css \
	   --use postcss-import autoprefixer postcss-nested);

	$( $postcss src/index.css \
	   --output grille.css --no-map\
	   --use postcss-import autoprefixer postcss-nested cssnano);

	$( $postcss src/debug.css \
	   --output grille.debug.css --no-map\
	   --use autoprefixer postcss-nested cssnano);

	sed -i "" "1s;^;$version;" grille.dev.css;
	sed -i "" "1s;^;$version;" grille.css;
	sed -i "" "1s;^;$version;" grille.debug.css;
fi

if [[ $1 = "watch" ]]; then
	$( $postcss src/index.css \
	   --output grille.dev.css --watch \
	   --use postcss-import autoprefixer postcss-nested);
fi

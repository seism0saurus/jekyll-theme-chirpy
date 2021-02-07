#!/usr/bin/env bash
#
# Run jekyll serve and then launch the site

cp -a node_modules/popper.js/dist assets/js/popper.js/
cp -a node_modules/bootstrap/dist assets/js/bootstrap/
cp -a node_modules/jquery/dist assets/js/jquery/
cp -a node_modules/@fortawesome/fontawesome-free assets/js/fontawsesome-free
cp -a node_modules/simple-jekyll-search/dest assets/js/simple-jekyll-search
cp -a node_modules/lozad/dist assets/js/lozad
cp -a node_modules/countup.js/dist assets/js/countup.js
cp -a node_modules/mathjax/es5 assets/js/mathjax
cp -a node_modules/mermaid/dist assets/js/mermaid
cp -a node_modules/polyfill-library/polyfills/__dist assets/js/polyfill-library
curl https://polyfill.io/v3/polyfill.min.js?features=es6\&flags=always > assets/js/polyfill/polyfill.min.js

bundle exec jekyll s -H 0.0.0.0 -l

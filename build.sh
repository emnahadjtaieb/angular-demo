#!/bin/sh

ng build

find docs -type f | xargs sed -i "s/\"\/assets/\"\/angular-demo\/assets/g"

sed -i 's/runtime/angular-demo\/runtime/g' docs/index.html
sed -i 's/polyfills/angular-demo\/polyfills/g' docs/index.html
sed -i 's/scripts/angular-demo\/scripts/g' docs/index.html
sed -i 's/main/angular-demo\/main/g' docs/index.html
sed -i 's/styles\./angular-demo\/styles\./g' docs/index.html
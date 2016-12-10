
# polylactide

Template for working with [polymer](https://github.com/Polymer/polymer) [web components](https://github.com/webcomponents/webcomponentsjs) in [wintersmith](https://github.com/jnordberg/wintersmith) using [browserify](https://github.com/substack/node-browserify) and [stylus](https://github.com/stylus/stylus).


## Usage

With [node.js](http://nodejs.org) & [wintersmith](https://github.com/jnordberg/wintersmith) installed:

```
# clone/download repo
npm install
wintersmith preview
```


## Deploying

You can use [vulcanize](https://github.com/Polymer/vulcanize) to bundle up your component/app.

Example:

```
npm install vulcanize
wintersmith build
./node_modules/.bin/vulcanize --inline-scripts --inline-css build/index.html > build/index.html.tmp
mv build/index.html.tmp build/index.html
```

Now you can deploy the static content in the `build/` directory.

Or if you just want to bundle a component:

```
./node_modules/.bin/vulcanize --inline-scripts --inline-css build/components/disco/index.html > mycomponent.html
```


## License

MIT
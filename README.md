# module

> Tasks for working with tangle modules

[![Travis Build Status](https://secure.travis-ci.org/tanglejs/module.png?branch=master)](http://travis-ci.org/tanglejs/module)
[![Dependency Status](https://david-dm.org/tanglejs/module.png)](https://david-dm.org/tanglejs/module)
[![devDependency Status](https://david-dm.org/tanglejs/module/dev-status.png)](https://david-dm.org/tanglejs/module#info=devDependencies)

[![NPM](https://nodei.co/npm/module.png?downloads=true)](https://nodei.co/npm/module/)

## Overview

[tangle](https://github.com/tanglejs/tangle) is a set of tools
for building web applications.

`module` implements the `module` subcommand for
[tangle](https://github.com/tanglejs/tangle).


## Usage

    --option, -o [String] - An example option.
    --help, -h - Display this message


## Contributing

The test suite is implemented with
[nodeunit](https://github.com/caolan/nodeunit) and
[nixt](https://github.com/vesln/nixt).

To rebuild & run the tests

    $ git clone https://github.com/tanglejs/module.git
    $ cd module
    $ npm install
    $ grunt test

You can use `grunt watch` to automatically rebuild and run the test suite when
files are changed.

Use `npm link` from the project directory to tell `tangle` to use
your modified `module` during development.

To contribute back, fork the repo and open a pull request with your changes.


## License

Copyright (c) 2014 Logan Koester
Licensed under the MIT license.



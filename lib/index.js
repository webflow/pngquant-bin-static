'use strict';
var path = require('path');
var BinWrapper = require('bin-wrapper');

module.exports = new BinWrapper()
	.dest(path.join(__dirname, '../bin'))
	.use('pngquant');

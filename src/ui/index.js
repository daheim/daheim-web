import Promise from 'bluebird';

Promise.noConflict();

if (global.localStorage && global.localStorage.debug && global.localStorage.debug.indexOf('stack') !== -1) {
	require('source-map-support').install();
}

require('./core');
require('./third');
require('./ready');
require('./directives');

require('./router');

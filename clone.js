var async = require('async');
var cp = require('child_process');

var data = require('./all.json');

async.eachLimit(data, 10, function (pkg, callback) {
    console.error("cloning: " + pkg.name)
    cp.exec('cd /mnt/scandata/bower;git clone ' + pkg.url + ' ' +  pkg.name, function (err, stdout, stderr) {
        if (err) {
            console.error(err);
        }
        console.error('done cloning: ' + pkg.name);
	callback();
    });
}, function (err) {
    console.log('DONE');
});


## results
The scan results from retire.js for each bower package

## clone.js
Clone each repository in bower into a directory to be scanned. You will need around 100GB of space.

note run `npm i async` before using. It will put data in /mnt/scandata/bower (edit the file if you want it someplace else)

## retire_scan.sh
For each repository cloned, it will run retire against it and log the results. I suggest running it like `./retire_scan.sh &> retire.log`

## all.json
The list of packages that I used.

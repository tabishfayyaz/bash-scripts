
## LS - list directory contents

#### File sorted by modification time
`ls -lt` 

`ls -ltr` for reverse 

#### Hidden files but not the current(.) and parent directory(..)
`ls -A`

#### Display visual classification of files
`ls -F` 

`ls -FG` to color the output

## FIND - walk a file hierarchy

### Find files that don’t have a certain string e.g. build
`find . -name *.svg | grep -v 'build'`

## SED - stream editor 
### Substitute 1st instance of 'foo' with 'zoo' on each line
`echo "this is foo" | sed 's/foo/zoo/'`

## TR - translate characters
### Replace all character in a file and output those to a new file
`$ tr '\r' '\n' < inputfile > outputfile`

### Delete all characters from a file
`$ tr -d ','`

## ADB - Android Debug Bridge
### Take device screenshot
`$ adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > screen.png`

## MAC - OSX
### See and delete recently installed .pkg files 

`$ cd /private/var/db/receipts/`	recent install activity

`$ ls -ltr`				recently installed files in sorted order

`$ lsbom -fls <name-of-bom-file>`	list contents of bom file, you can use this list to manually delete the installed files

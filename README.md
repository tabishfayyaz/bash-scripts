
*In Unix, all 'core' applications can take text in, and output it. (i.e. pipes) e.g. ls -l | grep zip*


## LS - list directory contents

#### File sorted by modification time
`ls -lt` 

`ls -ltr` for reverse 

#### Hidden files but not the current(.) and parent directory(..)
`ls -A`

#### Display visual classification of files
`ls -F` 

`ls -FG` to color the output

#### Listing other directories
`ls -l directoryname/`

#### List just the directories in your working directory
`ls -d */ ` */ forces the display of only items ending with a forward slash, which in this case would be a directory, even if     
            the -F option of ls isn't used. -d keep it from finding all directories recursively 

#### Comma separated list of files & directories
`ls -m`

#### Display full time information consistently for all files
`ls -lT`

## GREP - file pattern searcher

#### case insensitive string search
```
echo “this is first line  
> this is second line” | grep -i “second”
```

#### Print lines that don’t match search string
```
echo "this is first line
> this is second line
> this is third line" | grep -v "second"
```

#### Multiple filters on stdout
`find . -name *.jar | grep -i SampleApplication | grep -i sdk`

#### Display lines before or after search string, -A=after, -B=before, -C=after & before
```
ifconfig | grep -A 4 -i en0
ifconfig | grep -B 2 -i en0
```

#### Count number of matches
```
echo "this is first line
> this is second line
> this is third line" | grep -c this
```

#### Search for entire pattern
`ifconfig | grep -w RUNNING`

#### Print relative line number of search string
`ifconfig | grep -n en0`

#### String search in all files under a directory
`grep string -rn directoryName`

#### String search within zip file
`zipgrep -iw framework GamingSDK-iOS9-2.0.0.zip`

### Print only matching search string
```
"this is first line
this is second line
this is third line" | grep -o this
```

#### Print multiple matching strings (substring1 OR substring1)
```
"this is first line
this is second line
this is third line" | grep -e this -e second
```

#### Print matching search string with color
`$ grep --color <string> <path-to-file>`

## FIND - walk a file hierarchy

#### Find files that don’t have a certain string e.g. build
`find . -name *.svg | grep -v 'build'`

## SED - stream editor 

#### Substitute 1st instance of 'foo' with 'zoo' on each line
`echo "this is foo" | sed 's/foo/zoo/'`

## TR - translate characters

#### Replace all character in a file and output those to a new file
`$ tr '\r' '\n' < inputfile > outputfile`

#### Delete all characters from a file
`$ tr -d ','`


## MAC - OSX
#### See and delete recently installed .pkg files 

`$ cd /private/var/db/receipts/`	recent install activity

`$ ls -ltr`			recently installed files in sorted order

`$ lsbom -fls <name-of-bom-file>`	list contents of bom file, you can use this list to manually delete the installed files

## Links
- Quick and Simple Introduction to the Vi Text Editor: http://heather.cs.ucdavis.edu/~matloff/UnixAndC/Editors/ViIntro.html

#Journal

Easy to use, 5 line bash script to manage your daily journals.

#Installation

Clone the repo and run `make`

```
$ git clone https://github.com/nu11p01n73R/journal.git
$ cd journal
$ make
```

#Usage

To add a journal entry today(or view the one you already have) just type 
```
$ jrnl
```

Which will open the file in your editor configured in `$EDITOR` or `vim` 
by default.


Internally journal uses GNU `date` utility. So you can mention date in any
format supported by the utility. Some examples,

```
$ jrnl yesterday        
$ jrnl last sunday      
$ jrnl 4 May 
$ jrnl 4 May 2017      
$ jrnl 4 days ago
```

#Internals
By default all journal entires are stored in the user home,

```
$HOME/.journal
```

This can be configured by exporting a shell variable. Add the 
following in your bash startup file,

```
export JOURNAL_PATH="/custom/location"
```

The journal entires are organized in subdirectories within the root
as,

```
$HOME/.journal/{year}/{month}/{day}.md
```


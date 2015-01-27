# Gmail Generator

Given a Gmail address and, optionally, a count (default is 10) this script will return a list of unique address aliases. 

## How it Works

Any Gmail addresses can be aliased by appending characters after a plus sign, i.e. `address@gmail.com, address+characters@gmail.com and address+17@gmail.com` all point to the same address. This script works by appending integers from 0 up to a given value. A list of alias addresses can be useful for testing mass emails without using multiple email accounts. This trick works for any Google-based email account, not just those ending in the gmail domain.

## Usage

Download gmailGen.sh into any directory. From the command line, navigate to that directory and grant execution permission.
```
cd /path/to/file
chmod 755 gmailGen.sh
```

Call gmailGen.sh with a Gmail address and a count.
```
./gmailGen.sh address@gmail.com 12
```

For long lists, you may wish to output to a file.
```
./gmailGen.sh address@gmail.com 120 > file.txt

```

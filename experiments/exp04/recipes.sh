#!/bin/bash

rm -rf .git/
rm -rf .4git/
git init .

date0="Mon Jun 17 00:00:00 2019 -0300"
date1="Tue Jun 18 00:00:00 2019 -0300"
date2="Wed Jun 19 00:00:00 2019 -0300"
date3="Thu Jun 20 00:00:00 2019 -0300"
date4="Thu Jun 21 00:00:00 2019 -0300"
date5="Thu Jun 22 00:00:00 2019 -0300"

### Commit 0
echo "test" > a.txt
git add a.txt
git config user.name "Alice"
git config user.email "alice@id.com"
GIT_COMMITTER_DATE="$date0" git commit -m "First commit" --author="Alice <alice@id.com>" --date="$date0"

### Commit 1
echo "content" > a.txt
git add a.txt
git config user.name "John"
git config user.email "john@id.com"
GIT_COMMITTER_DATE="$date1" git commit -m "Second commit" --author="John <john@id.com>" --date="$date1"

### Commit 2
echo "test 2" > a.txt
git add a.txt
git config user.name "Alice"
git config user.email "alice@id.com"
GIT_COMMITTER_DATE="$date2" git commit -m "Third commit" --author="Alice <alice@id.com>" --date="$date2"

### Commit 3
echo "test + content" > a.txt
git add a.txt
git config user.name "John"
git config user.email "john@id.com"
GIT_COMMITTER_DATE="$date3" git commit -m "Fourth commit" --author="John <john@id.com>" --date="$date3"

### Commit 4
echo "test 2 + content" > a.txt
git add a.txt
git config user.name "Alice"
git config user.email "alice@id.com"
GIT_COMMITTER_DATE="$date4" git commit -m "Fiveth commit" --author="Alice <alice@id.com>" --date="$date4"

### Commit 5
echo "test content" > a.txt
git add a.txt
git config user.name "Peter"
git config user.email "peter@id.com"
GIT_COMMITTER_DATE="$date5" git commit -m "Sixth commit" --author="Peter <peter@id.com>" --date="$date5"

exit 0;
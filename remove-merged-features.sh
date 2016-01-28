#!/bin/bash
git checkout develop;
git pull;
git fetch -p;
for branch in `git branch --merged`; do
	if [[ "$branch" == feature* ]] 
	then
		git branch -d $branch;
	fi
done;

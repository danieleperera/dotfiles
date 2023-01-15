#!/bin/bash
EDITOR=vim
GREEN=$(tput -T screen setaf 2)
POWDER_BLUE=$(tput -T screen setaf 153)
NORMAL=$(tput sgr0)

if [[ $1 = "post" ]]; then
	#statements
	# POSTS
	export SLUG=$2
	DATE=`date "+%Y"`

	hugo new posts/$DATE/$SLUG.md

	$EDITOR content/posts/$DATE/$SLUG.md
fi


# Send it to github
if [[ $1 = 'publish' ]]; then
	if [[ $2 ]]; then
		commit_message="$2"
	else
		commit_message="new post"
	fi
	git add --all ; git commit -am "$commit_message" ; git push;
fi

if [[ $1 = 'deploy' ]]; then

	printf "\n${GREEN}### Pushing changes and building on the other side ###\n${NORMAL}"
	git push 
fi

if [[ $1 = 'help' ]]; then
	#statements
	echo "${GREEN}post : ${NORMAL}creates a new post"
	echo "${GREEN}publish : ${NORMAL}adds all files to git and commits the changes to the current branch"
	echo "${GREEN}deploy : ${NORMAL}pushes any commits to origin"
fi

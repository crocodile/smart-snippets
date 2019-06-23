#!/bin/bash
LIGHT_GREEN='\033[1;32m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

if [ -z "$1" ]
then
	echo "No arguments. Refer to 'dave --help' for options."
	exit 1
else
	command="$1"
fi

if [ $command = "tellme" ]
then

	if [ -z "$2" ]
	then
		echo "Please specify which tag you would like to retrieve snippets for as the second argument. Refer to 'dave --help' for options."
		exit 1
	else
		tag="$2"
	fi
	
	echo -e "\nSnippets for ${BLUE}$command${NC}:"
	while IFS=, read -r col1 col2 col3
	do
		if [ $col1 = $tag ]
		then 
	    	echo -e "   ${BLUE}$col2${NC}\t$col3"
	    fi
	done < dave.csv
	echo -e "" # To get a new line
	
elif [ $command = "remember" ]
then

	tag="$2"
	newsnippet="$3"
	description="$4"
	echo $tag,$newsnippet,$description >> dave.csv
	echo -e "${GREEN}For tag:${NC} $tag ${GREEN}added snippet:${NC} $newsnippet ${GREEN}with the description:${NC} $description"

elif [ $command = "show" ]
then
	open dave.csv
elif [ $command = "help" ] || [ $command = "-help" ] || [ $command = "--help" ] ||[ $command = "-h" ] ||[ $command = "--h" ] 
	then
	echo -e " Use 'dave tell me <tag>' to look up snippets for a tag.\n Use 'dave remember <tag> <snippet> <description> to add a snippet.\n Use 'dave show' to open all snippets as a csv file."
else
	echo -e "${RED}I don't understand: $command${NC}\nRefer to 'dave --help' for options."
fi

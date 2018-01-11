#!/bin/bash

# Fetch settings
if [[ $(uname) == "Darwin" ]]; then
    SCRIPTPATH=`greadlink -f ${BASH_SOURCE[0]}`
else
    SCRIPTPATH=`readlink -f ${BASH_SOURCE[0]}`
fi
BASEDIR="`dirname $SCRIPTPATH`/.."
TESTRIGS_DIR="$BASEDIR/test_rigs"

_autocomplete()
{
	local cur prev opts
	COMPREPLY=()
	cur="${COMP_WORDS[COMP_CWORD]}"
	prev="${COMP_WORDS[COMP_CWORD-1]}"
	opts=`$BASEDIR/scripts/run.sh -h | grep -e "-." -o`

	if [[ ${cur} == -* ]] ; then
		COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
	else
		case "${prev}" in
		-t)
#			echo
			relpath="$cur"
			listpath="$TESTRIGS_DIR"
			if [ -d "$listpath/$relpath" ]; then
				prevpath="$relpath"
			else
				curdir=`basename "$relpath"`
				prevpath=`echo $relpath | sed -e "s/$curdir//"`
			fi
			listpath="$listpath/$prevpath"
#			echo relpath=$relpath
#			echo prevpath=$prevpath
#			echo listpath=$listpath
			if [ -d "$listpath" ]; then
				subdirs=`\ls $listpath | sed -e "s@^@$prevpath@" | sed -e 's@$@/@'`
	#			echo subdirs=$subdirs
				COMPREPLY=( $(compgen -W "$subdirs" -- ${relpath}) )
			fi
			;;
		*)
			# do nothing
			;;
		esac
	fi

	return 0
}

SCRIPTS=`\ls $BASEDIR/scripts | grep ".sh" | sed -e 's@^@./@'`
complete -o nospace -F _autocomplete $SCRIPTS
SCRIPTS=`\ls $BASEDIR/scripts | grep ".sh" | sed -e 's@^@./scripts/@'`
complete -o nospace -F _autocomplete $SCRIPTS

#!/bin/sh
usage()
{
  echo "Usage: $0 \"you blog title\"" >&2
  return 1
}

blog()
{
  local ext=adoc
  local dateformat="+%Y-%m-%d"
  local title=$1
  test -z $1 || test $# != 1 && usage
  if [ $? != 0 ];
  then
    local today=$(date $dateformat)
    local dir=$today-$(echo $title | gsed -e 's/[[:space:]]/-/g')
    mkdir -p $dir
    $EDITOR $dir/index.$ext
  fi
}

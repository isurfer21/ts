#!/usr/bin/env bash
ROOTDIR=`dirname $0`
FLAG=$1
FILE=$2
case $FLAG in

  '-h' | '--help')
    echo "
 Options:
  -h --help   Show help options
  -r --run    Run the source code
  -b --bld    Build for current system
  -m --mac    Publish for macOS
  -w --win    Publish for Windows
  -l --lnx    Publish for Linux

 Usage
  sh worker.sh -h
  sh worker.sh -r <src-file.v>
  sh worker.sh -b <src-file.v>
  sh worker.sh -w <src-file.v>
  "
    ;;

  '-r' | '--run')
    echo "Running ..."
    v run $FILE
    ;;

  '-b' | '--bld')
    echo "Building ..."
    v $FILE
    ;;

  '-m' | '--mac')
    echo "Publishing for macOS ..."
    v $FILE
    ;;  

  '-w' | '--win')
    echo "Publishing for Windows ..."
    v -os windows $FILE
    ;;

  '-l' | '--lnx')
    echo "Publishing for Linux ..."
    v -os linux $FILE
    ;;

  *)
    echo "Missing arguments"
    ;;
esac
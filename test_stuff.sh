#!/usr/bin/env bash
#set -xe
################################################################
#created by : Pushtakio
#purpose: testing the markdown2pdf
#date:  09/07/2019
#version: 1.0.0
################################################################


md2pdf_cmd=$(which md2pdf)

echo $md2pdf_cmd

if [[ $md2pdf_cmd == '' ]];then
  false;exit 1
else
  if [[ -e test.md ]];then
    $md2pdf_cmd test.md
      if [[ $? == 0 ]];then
        echo "it  worked";exit 0
      else
        echo "if failed";exit 1
      fi
  fi
fi

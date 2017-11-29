#!/bin/sh

if [ $# -ne 1 ]; then
        echo "Usage: $0 project_name" >&2
        exit 1
fi

# Parameters for template
PROJECT_NAME=$1
TODAY=$(date '+%D')
DESCRIPTION='this text file was automatically generated'
FIRST=$(date '+%d%b%y')
DIV='---------------------------------------------------------------------'


cat << EOF
Project name:
    $PROJECT_NAME
Date:
    $TODAY
Description:
    $DESCRIPTION
Notes:
    

$DIV $FIRST
<Stuff I did on this date>
-
$DIV

$DIV WORKING ON NOW
<In case I get distracted, this is what I last set out to do.> 
-

$DIV TODO
<Things I still need to do>
-

$DIV QUESTIONS
<Questions that came up while working>
-

$DIV IDEAS
<Random ideas that popped into my head>
-

$DIV REFERENCES
<Resources used>
Topic
    - link
EOF

This repository was inspired by a [comment](https://news.ycombinator.com/item?id=5322254) to a [post](https://news.ycombinator.com/item?id=5316093) on https://news.ycombinator.com/.

In the cited comment, a user shared a template they use for documenting their work on project. I have created a shell script that automatically generates a new template and prints it standard output.

## Usage
To create a new log from the template, use:
```project-log 'title'```

The command prints to standard output. Use pipes to save to a file:
```project-log 'title' > logfile.txt```

## Setup
1. Create a link for the file so it is accessible without needing to specify its full path:
```touch /etc/local/bin/project-log && ln -s project-log.sh /etc/local/bin/project-log```
2. Make the link executable:
```chmod u+x /etc/local/bin/project-log```

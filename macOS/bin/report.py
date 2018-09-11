#!/usr/bin/env python

import commands
import os

BASE = '/Users/pmullins/documents/Development/desktop/macos/'
USERNAME = 'Patrick Mullins'

repos = os.listdir(BASE)
repos = [os.path.join(BASE, repo) for repo in repos]


commits = ""
for dir in repos:
    command = 'cd ' + dir + ' && git log --branches=* ' + \
        '--author="' + USERNAME + '" --after="1 week ago" --oneline --reverse'
    commits = commands.getstatusoutput(command)[1]
    if(
        len(commits) > 0 and
        "Not a directory" not in commits and
        "Not a git repository" not in commits
    ):
        print os.path.relpath(dir, BASE)
        # Remove hash
        commits = [' '.join(['-'] + commit.split(' ')[1:]) for commit in commits.split('\n')]
        print '\n'.join(commits) + '\n'
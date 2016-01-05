#! /usr/bin/env python

def match(command, settings):
    return (command.script.startswith('git')) and ('nothing to commit, working directory clean' in command.stdout)

def get_new_command(command, settings):
    return command.script + ' --amend'

enabled_by_default = True


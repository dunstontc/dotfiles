#!/usr/local/bin/env python
# -*- coding: utf-8 -*-
"""Tmux battery info segment."""

import re
from sys import platform

from subprocess import run, PIPE, STDOUT, CalledProcessError


def Juice():
    """Return battery stats on MacOS.

    Returns
    -------
    string
        Formatted uptime string.

    """
    try:
        q = run(r'pmset -g batt', stdout=PIPE, stderr=STDOUT, shell=True)

    except CalledProcessError:
        return 'Error running tmux battery script'

    data = re.search(
        r"(?:')(?P<source>\w+)(?:\sPower'\n)(?:.+\s)(?P<charge>\d+)(?:%)",
        q.stdout.decode('utf-8'),
        re.M
    )

    if data.group('source') == 'Battery':
        charging = ''
    elif data.group('source') == 'AC':
        charging = '⚡'
    else:
        charging = '???'

    current_charge = int(data.group('charge'))
    if current_charge == 100:
        charge_attr = '#[fg=#4ec9b0,italics,bg=#303030]'
    elif current_charge <= 10:
        charge_attr = '#[fg=#d16969,italics,bg=#303030]'
    elif current_charge <= 20:
        charge_attr = '#[fg=#ce9178,italics,bg=#303030]'
    elif current_charge <= 25:
        charge_attr = '#[fg=#d7ba7d,italics,bg=#303030]'
    elif current_charge <= 35:
        charge_attr = '#[fg=#b5cea8,italics,bg=#303030]'
    else:
        charge_attr = '#[fg=#608b4e,italics,bg=#303030]'

    return f"{charge_attr}{charging} {current_charge}% ⚡"


def LinuxJuice():
    """Return battery stats on Linux systems. (Or at least on Ubuntu 16.04).

    Returns
    -------
    string
        Formatted uptime string.

    """
    try:
        q = run("upower -i $(upower -e | grep '/battery')",
                stdout=PIPE, stderr=STDOUT, shell=True)
    except CalledProcessError:
        return 'Error running tmux battery script'

    charge = re.search(
        r"(percentage:\s+(?P<charge>\d+)%)",
        q.stdout.decode('utf-8'),
        re.M
    )
    state = re.search(
        r"(?:^\s+state:\s+(?P<state>charging)$)",
        q.stdout.decode('utf-8'),
        re.M
    )

    if state is not None:
        charging = '+'
    else:
        charging = ''

    current_charge = int(charge.group('charge'))
    if current_charge == 100:
        charge_attr = '#[fg=#4ec9b0,italics,bg=#303030]'
    elif current_charge <= 10:
        charge_attr = '#[fg=#d16969,italics,bg=#303030]'
    elif current_charge <= 20:
        charge_attr = '#[fg=#ce9178,italics,bg=#303030]'
    elif current_charge <= 25:
        charge_attr = '#[fg=#d7ba7d,italics,bg=#303030]'
    elif current_charge <= 35:
        charge_attr = '#[fg=#b5cea8,italics,bg=#303030]'
    else:
        charge_attr = '#[fg=#608b4e,italics,bg=#303030]'

    return f"{charge_attr}{charging} {current_charge}% ⚡"


def Joose():
    if platform == 'darwin':
        print(Juice())
    elif platform == 'linux' or platform == 'linux2':
        print(LinuxJuice())
    else:
        return


Joose()

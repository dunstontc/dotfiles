#!/usr/local/bin/env python
# -*- coding: utf-8 -*-
"""Tmux battery info segment."""


import re
from subprocess import run, PIPE, STDOUT, CalledProcessError


def juice():
    """Return battery stats.

    Returns
    -------
    string
        Formatted uptime string.

    """
    try:
        q = run(r'pmset -g batt', stdout=PIPE, stderr=STDOUT, shell=True)
    except CalledProcessError:
        return 'Error running tmux battery script'

    shell_res = q.stdout.decode('utf-8')
    data = re.search(
        r"(?:')(?P<source>\w+)(?:\sPower'\n)(?:.+\s)(?P<charge>\d+)(?:%)",
        shell_res,
        re.M
    )

    if data.group('source') == 'Battery':
        charging = ''  # f'{data.group("days")}d'
    elif data.group('source') == 'AC':
        charging = ' '
    else:
        charging = '???'

    # charge_attr = '#[fg=#608b4e,italics,bg=#303030]'

    if data.group('charge'):
        current_charge = int(data.group('charge'))
        if current_charge == 100:
            charge_attr = '#[fg=#569cd6,italics,bg=#303030]'
        # elif current_charge > 95:
            # charge_attr = '#[fg=#4ec9b0,italics,bg=#303030]'
        elif current_charge < 50:
            charge_attr = '#[fg=#b5cea8,italics,bg=#303030]'
        elif current_charge < 25:
            charge_attr = '#[fg=#d7ba7d,italics,bg=#303030]'
        elif current_charge < 15:
            charge_attr = '#[fg=#ce9178,italics,bg=#303030]'
        elif current_charge < 10:
            charge_attr = '#[fg=#d16969,italics,bg=#303030]'
        else:
            charge_attr = '#[fg=#608b4e,italics,bg=#303030]'
    else:
        current_charge = '???'


    return f"{charge_attr}{charging} {current_charge}% "

print(juice())


#!/usr/local/bin/env python
# -*- coding: utf-8 -*-
"""Tmux battery info segment."""

import re
# from sys import platform

from subprocess import run, PIPE, STDOUT, CalledProcessError

# sample_output='''
#   native-path:          BAT0
#   vendor:               SMP
#   model:                bq20z45
#   power supply:         yes
#   updated:              Wed 21 Feb 2018 10:23:21 PM CST (35 seconds ago)
#   has history:          yes
#   has statistics:       yes
#   battery
#     present:             yes
#     rechargeable:        yes
#     state:               charging
#     warning-level:       none
#     energy:              20 Wh
#     energy-empty:        0 Wh
#     energy-full:         100 Wh
#     energy-full-design:  100 Wh
#     energy-rate:         41.418 W
#     voltage:             11.137 V
#     time to full:        1.9 hours
#     percentage:          20%
#     capacity:            100%
#     icon-name:          'battery-low-charging-symbolic'
#   History (charge):
#     1519273341	20.000	charging
#   History (rate):
#     1519273401	41.418	charging
#     1519273341	28.778	charging
# '''


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

    shell_res = q.stdout.decode('utf-8')
    data = re.search(
        r"(?:')(?P<source>\w+)(?:\sPower'\n)(?:.+\s)(?P<charge>\d+)(?:%)",
        shell_res,
        re.M
    )

    if data.group('source') == 'Battery':
        charging = ''  # f'{data.group("days")}d'
    elif data.group('source') == 'AC':
        charging = '⚡'
    else:
        charging = '???'

    if data.group('charge'):
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
        q = run("upower -i $(upower -e | grep '/battery')", stdout=PIPE, stderr=STDOUT, shell=True)
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
        charging = '⚡'
    else:
        charging = '???'

    if data.group('charge'):
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


print(Juice())
# if platform == 'darwin':
#     print(Juice())
# elif platform == 'linux' or platform == 'linux2':
#     print(LinuxJuice())
# else:
#     return


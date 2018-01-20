#!/usr/local/bin/env python
# -*- coding: utf-8 -*-
"""I just wanted to see my damn uptime."""


import re
from subprocess import run, PIPE, STDOUT, CalledProcessError


def ooptime():
    """Return system uptime.

    Returns
    -------
    string
        Formatted uptime string.

    """
    try:
        q = run(r'uptime', stdout=PIPE, stderr=STDOUT, shell=True)
    except CalledProcessError:
        return 'Error running "uptime"'

    shell_res = q.stdout.decode('utf-8')
    times = re.search(
        r'(?:\sup\s+)((?P<days>\d+)(?:\sdays?))?(?:,?\s+)(?P<hours>\d+):(?P<mins>\d+)',
        shell_res,
        re.M
    )

    if times.group('days'):
        days = f' {times.group("days")}d'
    else:
        days = ''

    if times.group('hours'):
        hours = times.group('hours')
    else:
        hours = '00'

    if times.group('mins'):
        mins = times.group('mins')
    else:
        mins = '0'

    return f'↑{days} {hours}h {mins:0>2}m '


print(ooptime())


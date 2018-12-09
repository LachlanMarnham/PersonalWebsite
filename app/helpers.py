from collections import namedtuple
from enum import Enum, unique
from flask import url_for

MenuItem = namedtuple('MenuItem', ('title', 'url', 'context'))


@unique
class NavContext(Enum):
    home = 0
    music = 1
    projects = 2
    partita = 3
    cv = 4


class NavBarMenu:
    def __init__(self):
        self.home = MenuItem(
            title='Home',
            url=url_for('home'),
            context=NavContext.home,
        )
        self.music = MenuItem(
            title='Music',
            url=url_for('music'),
            context=NavContext.music,
        )
        self.projects = MenuItem(
            title='Projects',
            url=url_for('projects'),
            context=NavContext.projects,
        )
        self.partita = MenuItem(
            title='Partita',
            url=url_for('partita'),
            context=NavContext.partita,
        )
        self.cv = MenuItem(
            title='CV',
            url=url_for('cv'),
            context=NavContext.cv,
        )

    def items(self):
        return (
            self.home,
            self.music,
            self.projects,
            self.partita,
            self.cv
        )

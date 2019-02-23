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
            url=url_for('app.home'),
            context=NavContext.home,
        )
        self.music = MenuItem(
            title='Music',
            url=url_for('app.music'),
            context=NavContext.music,
        )
        self.projects = MenuItem(
            title='Projects',
            url=url_for('app.projects'),
            context=NavContext.projects,
        )
        self.partita = MenuItem(
            title='Partita',
            url=url_for('app.partita'),
            context=NavContext.partita,
        )
        self.cv = MenuItem(
            title='CV',
            url=url_for('app.cv'),
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


# The main menu has only a subset of the items that the nav bar has
class MainMenu(NavBarMenu):
    def items(self):
        return (
            self.music,
            self.projects,
            self.partita,
            self.cv
        )
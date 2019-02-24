from typing import Tuple

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

    def items(self) -> Tuple[MenuItem, MenuItem, MenuItem, MenuItem, MenuItem]:
        return (
            self.home,
            self.music,
            self.projects,
            self.partita,
            self.cv
        )


# The main menu has only a subset of the items that the nav bar has
class MainMenu(NavBarMenu):
    def items(self) -> Tuple[MenuItem, MenuItem, MenuItem, MenuItem]:
        return (
            self.music,
            self.projects,
            self.partita,
            self.cv
        )


class MusicVideos:
    frame_border = 0
    allowed_options = "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"

    def __init__(self):
        self._claire_de_lune = "https://www.youtube.com/embed/NhCcd-7DxAk?wmode=transparent"
        self._se_ela_perguntar = "https://www.youtube.com/embed/cTjFNhBM-pw"
        self._rumores_de_la_caleta = "https://www.youtube.com/embed/adUsXe464ow"
        self._recuerdos_de_la_alhambra = "https://www.youtube.com/embed/x6OhZz1qHMI"
        self._caprico_arabe = "https://www.youtube.com/embed/PpdDOV3NmCM"
        self._asturias = "https://www.youtube.com/embed/wfb5orlwtHE"
        self._nocturne = "https://www.youtube.com/embed/MqQdqJ7osYQ"
        self._prelude = "https://www.youtube.com/embed/Cb3uU9kUPgo"
        self._registro = "https://www.youtube.com/embed/3qPen_gpJX4"

    @property
    def urls(self) -> Tuple[str, str, str, str, str, str, str, str, str]:
        return (
            self._claire_de_lune,
            self._rumores_de_la_caleta,
            self._se_ela_perguntar,
            self._asturias,
            self._nocturne,
            self._caprico_arabe,
            self._recuerdos_de_la_alhambra,
            self._prelude,
            self._registro,
        )

from typing import List

PAGES: List[str] = ['home', 'projects', 'music', 'partita', 'CV']


def make_menu(page_names: List[str]) -> str:
    # Generates an unordered list for the navigation panel
    menu = '<ul>'
    for page in page_names:
        menu += f'<li><a href="../{page.lower()}">{page}</a></li>'
    menu += '</ul>'
    return menu

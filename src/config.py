from pathlib import Path
import addict

PATHS = addict.Dict()
PATHS.DATA = Path('../data')
PATHS.ASSETS = PATHS.DATA / 'assets'

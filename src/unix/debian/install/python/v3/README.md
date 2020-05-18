# Python3 installation

Installs Python3 (and some Python2) related APT packages if are not installed:

- `curl`
- `python-dev`
- `python3-dev`
- `python-pip`
- `python3-pip`
- `python3-setuptools`
- `python3-testresources`
- `libxml2-utils`
- `python-lxml`
- `python3-lxml`
- `python-numpy`
- `python3-numpy`

> In Ubuntu 18 and higher versions, also `python3-distutils` will be installed.

Also, installs or upgrade globally using PIP some Python3 packages. This step can be ignored using the parámeter [--no-upgrade-py3-global-libs](#no-upgrade-py3-global-libs):

- `pip`
- `virtualenv`
- `setuptools`
- `testresources`


## Parameters

<a name="no-upgrade-py3-global-libs" href="#no-upgrade-py3-global-libs">#</a> <b>--no-upgrade-py3-global-libs</b>

Ignores the installation and upgrade of Python3 packages using PIP.

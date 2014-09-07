# package builder

A Docker image with fpm installed to make building debian packages (primarily
from PyPI) as simple as possible. The Docker image uses Debian Wheezy as a
base and a target when building packages.


## Usage
***

For now, there aren't many options. To build a Debian package from a Python
package (must exist on PyPI), first clone the repository, then run:

    $ make build package=<some-package-name>

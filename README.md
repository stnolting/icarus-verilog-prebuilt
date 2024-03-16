# Prebuilt Icarus Verilog Binaries for Linux

[![Check_iverilog](https://img.shields.io/github/actions/workflow/status/stnolting/icarus-verilog-prebuilt/check_iverilog.yml?branch=main&longCache=true&style=flat&label=Check%20iverilog%20packages&logo=Github%20Actions&logoColor=fff)](https://github.com/stnolting/icarus-verilog-prebuilt/actions/workflows/check_iverilog.yml)
[![license](https://img.shields.io/github/license/stnolting/icarus-verilog-prebuilt?longCache=true&style=flat)](https://github.com/stnolting/icarus-verilog-prebuilt/blob/main/LICENSE)

* [Available Packages](#available-packages)
* [Download](#download)
* [Installation](#installation)

This repository provides prebuilt binaries for the **_Icarus Verilog_** simulator by Stephen Williams.
The binaries were built according to the instructions of the
[official installation guide](https://steveicarus.github.io/iverilog/usage/installation.html)
using **Ubuntu** on a **64-bit x86 machine** (actually on Ubuntu on Windows / WSL).

More information can be found on the official [Icarus Verilog GitHub repository](https://github.com/steveicarus/iverilog)
and the [Icarus Verilog homepage](http://iverilog.icarus.com/).

> [!NOTE]
> These prebuilt binaries are used by the [NEORV32 RISC-V Processor](https://github.com/stnolting/neorv32-verilog) project.


## Available Packages

| Release (tag) | Download archive | Version | Operating System |
|:-------------:|:----------------:|:-------:|:----------------:|
| [v1.0.0](https://github.com/stnolting/icarus-verilog-prebuilt/releases/tag/v1.0.0) | [:floppy_disk: download](https://github.com/stnolting/icarus-verilog-prebuilt/releases/download/v1.0.0/iverilog-27082022.tar.gz) | 12.0 (devel) (s20150603-1558-gc7cdc6c23) | x64 Linux |

[[back to top](#prebuilt-icarus-verilog-binaries-for-linux)]


## Download

> [!WARNING]
> Cloning this repository (via `git clone`)  will **not** include the release assets and will
**not include the actual Icarus Verilog package**! The compressed simulator binaries are available as
[releases](https://github.com/stnolting/icarus-verilog-prebuilt/releases) archive (`.tar.gz`) assets only.

### Via Browser

Click on the according **:floppy_disk: download** link in the table above to manually download the archive of choice
from the according [release page](https://github.com/stnoting/icarus-verilog-prebuilt/releases) (via the release _assets_).

### Via Command Line

You can use `wget` to directly download an archive from the table above. Select the toolchain of
choice, right-click on the **:floppy_disk: download** link, click "copy link address" and use that as argument for `wget`.

Example:
```bash
wget https://github.com/stnolting/icarus-verilog-prebuilt/releases/download/v1.0.0/iverilog-27082022.tar.gz
```

[[back to top](#prebuilt-icarus-verilog-binaries-for-linux)]


## Installation

Create a folder where you want to install the Icarus Verilog, for example `/opt/iverilog` (you might need
`sudo` to create this folder and copy data to it).

```
$ sudo mkdir /opt/iverilog
```

Navigate to your download folder. Decompress the downloaded archive (replace `ARCHIVE` by the actual archive name).
Again, you might have to use `sudo` if your target directory is protected.

```
$ sudo tar -xzf ARCHIVE.tar.gz -C /opt/iverilog/
```

Now add the simulator's `bin` folder to your system's `PATH` environment variable.
Your can also add this line to your `.bashrc` if applicable.

```
$ export PATH=$PATH:/opt/iverilog/bin
```

Test the simulator:

```
$ iverilog -v
Icarus Verilog version 12.0 (devel) (s20150603-1558-gc7cdc6c23)

Copyright (c) 2000-2021 Stephen Williams (steve@icarus.com)

  This program is free software; you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation; either version 2 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License along
  with this program; if not, write to the Free Software Foundation, Inc.,
  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.

iverilog: no source files.

Usage: iverilog [-EiRSuvV] [-B base] [-c cmdfile|-f cmdfile]
                [-g1995|-g2001|-g2005|-g2005-sv|-g2009|-g2012] [-g<feature>]
                [-D macro[=defn]] [-I includedir] [-L moduledir]
                [-M [mode=]depfile] [-m module]
                [-N file] [-o filename] [-p flag=value]
                [-s topmodule] [-t target] [-T min|typ|max]
                [-W class] [-y dir] [-Y suf] [-l file] source_file(s)

See the man page for details.
```

[[back to top](#prebuilt-icarus-verilog-binaries-for-linux)]


## License

This project is released under the [GPL-2.0 license](https://github.com/stnolting/icarus-verilog-prebuilt/blob/master/LICENSE).
No copyright infringement intended.
Other implied or used projects might have different licensing - see their documentation to get more information.

#### Limitation of Liability for External Links

Our website contains links to the websites of third parties ("external links"). As the
content of these websites is not under our control, we cannot assume any liability for
such external content. In all cases, the provider of information of the linked websites
is liable for the content and accuracy of the information provided. At the point in time
when the links were placed, no infringements of the law were recognizable to us. As soon
as an infringement of the law becomes known to us, we will immediately remove the
link in question.

[[back to top](#prebuilt-icarus-verilog-binaries-for-linux)]

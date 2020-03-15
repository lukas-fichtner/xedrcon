xedrcon
=======

geht dich gar nichts an

[![oclif](https://img.shields.io/badge/cli-oclif-brightgreen.svg)](https://oclif.io)
[![Version](https://img.shields.io/npm/v/xedrcon.svg)](https://npmjs.org/package/xedrcon)
[![Downloads/week](https://img.shields.io/npm/dw/xedrcon.svg)](https://npmjs.org/package/xedrcon)
[![License](https://img.shields.io/npm/l/xedrcon.svg)](https://github.com/Xedon420/xedrcon/blob/master/package.json)

<!-- toc -->
* [Usage](#usage)
* [Commands](#commands)
<!-- tocstop -->
# Usage
<!-- usage -->
```sh-session
$ npm install -g xedrcon
$ xedrcon COMMAND
running command...
$ xedrcon (-v|--version|version)
xedrcon/1.0.1 win32-x64 node-v10.13.0
$ xedrcon --help [COMMAND]
USAGE
  $ xedrcon COMMAND
...
```
<!-- usagestop -->
# Commands
<!-- commands -->
* [`xedrcon admincmd`](#xedrcon-admincmd)
* [`xedrcon help [COMMAND]`](#xedrcon-help-command)
* [`xedrcon rconcmd`](#xedrcon-rconcmd)
* [`xedrcon version`](#xedrcon-version)

## `xedrcon admincmd`

DayZ Admin CMD

```
USAGE
  $ xedrcon admincmd

OPTIONS
  -c, --name=name  command to push
  -h, --host=host  host to push
  -k, --key=key    pw to push
  -p, --port=port  port to push

DESCRIPTION
  ...
  Usage:
  xedrcon admincmd -c shutdown -h %ServerIP2% -p %ServerPort2% -k %ServerRcon%
```

_See code: [src\commands\admincmd.js](https://github.com/Xedon420/xedrcon/blob/v1.0.1/src\commands\admincmd.js)_

## `xedrcon help [COMMAND]`

display help for xedrcon

```
USAGE
  $ xedrcon help [COMMAND]

ARGUMENTS
  COMMAND  command to show help for

OPTIONS
  --all  see all commands in CLI
```

_See code: [@oclif/plugin-help](https://github.com/oclif/plugin-help/blob/v2.2.3/src\commands\help.ts)_

## `xedrcon rconcmd`

DayZ Rcon CMD

```
USAGE
  $ xedrcon rconcmd

OPTIONS
  -c, --command=command  command to push
  -h, --host=host        host to push
  -k, --key=key          pw to push
  -m, --message=message  command say message to push
  -p, --port=port        port to push

DESCRIPTION
  ...
  Usage:
  xedrcon rconcmd -c say -m "Server wird in 1min aufgrund von Wartungsarbeiten heruntergefahren!!!" -h %ServerIP2% -p 
  %ServerPort2% -k %ServerRcon%
```

_See code: [src\commands\rconcmd.js](https://github.com/Xedon420/xedrcon/blob/v1.0.1/src\commands\rconcmd.js)_

## `xedrcon version`

xedrcon version

```
USAGE
  $ xedrcon version

DESCRIPTION
  ...
  Mehr Info gibts nicht
```

_See code: [src\commands\version.js](https://github.com/Xedon420/xedrcon/blob/v1.0.1/src\commands\version.js)_
<!-- commandsstop -->

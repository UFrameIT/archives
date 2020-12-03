# UFrameIT Archives

All MMT archives of formalizations needed by the [UFrameIT prototype](https://github.com/UFrameIT/UFrameIT) in the [FrameIT project](https://uframeit.github.io/).

This Git repository contains the following archives as Git submodules:

- [FrameIT/frameworld](https://gl.mathhub.info/FrameIT/frameworld/-/tree/devel): the primary formalization of knowledge UFrameIT uses
- [MitM/Core](https://gl.mathhub.info/MitM/core/-/tree/devel): used by FrameIT/frameworld for its formalization of 3D geometry, among others
- [MitM/Foundation](https://gl.mathhub.info/MitM/Foundation/-/tree/devel): used by archvies above for its formalization of logic and deduction
- [MMT/urtheories](https://gl.mathhub.info/MMT/urtheories/-/tree/devel): used by archives above for its formalization of the foundation to be used (Edinburgh LF Framework)

**If you just want to lurk how formalizations look like in UFrameIT, click here: <https://gl.mathhub.info/FrameIT/frameworld/-/tree/devel/>.**

## Installation

- download: `git clone --recurse-submodules https://github.com/UFrameIT/archives.git`
- update: `git pull --recurse-submodules`

## Development

Use the [MMT plugin for IntelliJ](https://github.com/UniFormal/IntelliJ-MMT).

Preferably use the [latest `mmt.jar` as built by MMT's CI](https://github.com/UniFormal/MMT/actions?query=branch%3Adevel+event%3Apush+is%3Acompleted).

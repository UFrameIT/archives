# UFrameIT Archives

All MMT archives of formalizations needed by the [UFrameIT prototype](https://github.com/UFrameIT/UFrameIT) in the [FrameIT project](https://uframeit.org).
This repository is co-released with UFrameIT as a whole, see [UFrameIT's releases](https://github.com/UFrameIT/UFrameIT/releases).

This Git repository contains the following archives as Git submodules:

- [FrameIT/frameworld](https://gl.mathhub.info/FrameIT/frameworld/-/tree/devel): the primary formalization of knowledge UFrameIT uses
- [MitM/Core](https://gl.mathhub.info/MitM/core/-/tree/devel): used by FrameIT/frameworld for its formalization of 3D geometry, among others
- [MitM/Foundation](https://gl.mathhub.info/MitM/Foundation/-/tree/devel): used by archives above for its formalization of logic and deduction
- [MMT/urtheories](https://gl.mathhub.info/MMT/urtheories/-/tree/devel): used by archives above for its formalization of the foundation to be used (Edinburgh LF Framework)

**If you just want to lurk how formalizations look like in UFrameIT, click here: <https://gl.mathhub.info/FrameIT/frameworld/-/tree/devel/>.**

## Installation
### via UFrameIT-install
If you are using this repository together with UFrameIT it is highly recomendet that you install it via [UFrameIT-install](https://gl.kwarc.info/FrameIT/uframeit-install).

### manual installation

If you want to view, edit, and update files in the formalization, follow these steps:

1. [Install MMT](https://uniformal.github.io//doc/setup/).

   At a minimum you need an `mmt.jar`, IntelliJ, and the [MMT plugin for IntelliJ](https://github.com/UniFormal/IntelliJ-MMT).
   
   - In case of a precompiled one, preferably use the [latest `mmt.jar` from the devel branch as built by MMT's CI](https://github.com/UniFormal/MMT/actions?query=branch%3Adevel+event%3Apush+is%3Acompleted) and place it into some new directories as `../MMT/deploy/mmt.jar`.
   - In case of a self-built one, you have the [MMT repository](https://github.com/UniFormal/MMT) cloned anyway.
     Make sure it is cloned to a directory named `MMT` wich is a sibling of this repo.
     Then, if you [build an `mmt.jar` via SBT](https://uniformal.github.io//doc/setup/sbt.html), it will automatically be created at `../MMT/deploy/mmt.jar`.

2. Clone this repository: `git clone --recurse-submodules https://github.com/UFrameIT/archives.git`

   Make sure that the directories `MMT` (from step 1) and `archives` (where you clone this repository to) are sisters.
   In other words: from within `archives`, the path `../MMT/deploy/mmt.jar` should resolve to the `mmt.jar` from step 1.
   (The IntelliJ "MathHub project" from the MMT IntelliJ plugin references such a relative path in its project file [archives.iml](./archives.iml).)

## Updating archives
*Warning:* commit all your changes before running one of the following commands!
- `.\update-remote.cmd` (on Windows) or `.\update-remote.sh` (on \*nix) takes care of a longish sequence of Git commands to update all submodules to the latest remote commit.  
  If everything works and you have the needed git permissions, please commit and push the update.
- `.\update.cmd` (on Windows) or `.\update.sh` (on \*nix) updates to the version committed on the current branch in the archives repo.


## compiling the archives
1. Make sure you have an up to date `mmt.jar` located in `../MMT/deploy/mmt.jar` relative to the archives repository.
2. Run `.\build.cmd` (on Windows) or `.\build.sh` (on \*nix)

## In case of errors
Often using [clean.sh](https://github.com/UFrameIT/archives/blob/master/clean.sh) can resolve weird errors that might pop up. It can be used on Windows via the git bash.


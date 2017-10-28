
# How to use

Replace "project" with directory name of your project

## on macos / linux

* docker run --rm -v "c:\\project:/go/src/project" --network="host" nurtureai/devbuffalo project buffalo dev

## on windows

* docker run --rm -v "%cd%:/go/src/project" --network="host" nurtureai/devbuffalo project buffalo dev




# How to use

Replace "project" with directory name of your project

## on macos / linux

* docker run --rm -v "c:\\project:/go/src/project" -p 3005:3005 --network=shared nurtureai/devbuffalo project buffalo dev

## on windows

* docker run --rm -v "%cd%:/go/src/project" -p 3005:3005 --network=shared nurtureai/devbuffalo project buffalo dev



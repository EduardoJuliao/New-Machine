# Vagrant

## Necessary

To work with vagrant we need to download

1. [Vagrant](https://www.vagrantup.com/docs/installation)
2. [Virtual box](https://www.virtualbox.org/)

## Setup

After installing both of the necessary programs, restart your computer.

After boot up, Vagrant and Virtual Box should be fully functional.

## Running

Copy the file in this folder into another folder, run `vagrant up` and 💥,
you'll have a virtual box running virtual box with Windows Server 2016.

## Folder structure

Vagrant will look for the file in the folder, if can't find, it will start looking into parent folders.

What I did, is have a folder called `virtual machines` that has the `vagrantfile` and sub directories using it.

### Shared folder

This folder it's a shared folder with the virtual box, files that needs to go into the box should be dropped there.

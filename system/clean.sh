#!/bin/bash

sudo pacman -Scc
rm -rf ~/.cache/*
sudo journalctl --vacuum-time=4weeks

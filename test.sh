#!/bin/bash

sed "s/joezhang/$(whoami)/g" zshrc > zshrc-bak

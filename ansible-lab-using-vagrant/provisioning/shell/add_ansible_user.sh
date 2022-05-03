#!/usr/bin/env bash
useradd ansible
usermod --password $(echo ansible | openssl passwd -1 -stdin) ansible
usermod -aG wheel ansible
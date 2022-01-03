#!/usr/bin/bash
dnf module -y enable pki-deps
sleep 2
dnf module -y enable postgresql:12
sleep 2
dnf distro-sync --nobest -y
sleep 2
dnf install rhvm -y

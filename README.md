# Dotfiles Automation

This repo is just for automating my personal system setup. If you're here looking for a guide or tutorial, you're in the wrong place. I use **Ansible**, **Rust**bash, and other tools to handle my environment across multiple machines, but this isn't meant for anyone but me.

## Tools

- **Ansible**: Handles installation of my dotfiles and packages.
- **Rust**: Some small custom utilities I wrote in Rust for fun.
- **Bash scripts**: Miscellaneous scripts for system tweaks.
- **QMK**: My custom keyboard firmware setup.

## Installation

If you really want to, you can run this on your system, but I don't recommend it. You'll probably need to adjust a bunch of things to fit your setup.

```bash

ansible-playbook -i inventory.yml playbook.yml --ask-become-pass
```

## What It Does

- Installs my dotfiles from GitHub.
- Sets up a bunch of random stuff like **zsh**, **Vim**, and my **Rust** utilities.
- Configures some tools like **QMK** for my keyboard firmware.
- Updates and upgrades everything without asking questions.

## Warning

This is built for **my** setup. If you try to use it as-is, it might break something on your end. Feel free to explore it, but don’t expect it to work out of the box.

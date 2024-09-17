# Hello World!

This is a brief introduction to this small but exciting project.

## Short-term Goal

Enable the installation of all my configurations through a TUI (Terminal User Interface).

## Long-term Goal

Create a program to easily generate your own dotfiles (configuration files). I plan to achieve this using Rust, and the most important feature will be the ability to create your own installation script as well.

## General Objectives

- Extract your dotfiles from their default location and store them in a folder so they can be easily uploaded to Git.
- Create symlinks (symbolic links) for every file managed.
- It should look and work with Vim-like key bindings.
- Install a list of packages:
  - Ask if you want all of them or just a few.
  - Yes? Then download everything and show a message when the installation finishes.
  - No? Then ask if:
    - You want to view the list and exclude some packages.
    - You want to view the list and include only specific packages.

## Integration with EasyBoot.xyz

EasyBoot.xyz is my new project, a fork of Netboot.xyz, Ventoy, and iPXE, and it will have full integration with this system. The project aims to offer a seamless network boot solution, allowing:

- Booting the system directly from EasyBoot.xyz.
- Accessing a custom menu that will allow you to select the installation of your dotfiles along with the operating system of your choice.
- Automating the installation of operating systems and custom configurations on new machines without the need for physical media.

This integration will streamline the installation and configuration process from anywhere with network access, making it much more efficient and flexible.

## Additional Notes

This project will also include a custom configuration for EasyBoot.xyz that will allow it to directly load your dotfiles and specific configurations after the operating system installation.


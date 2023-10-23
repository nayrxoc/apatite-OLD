
# Apatite
[![build-ublue](https://github.com/nayrxoc/apatite/actions/workflows/build.yml/badge.svg)](https://github.com/nayrxoc/apatite/actions/workflows/build.yml)
> **Warning**
> This image is EARLY in development, along with it using an experimental version of Fedora 39

Apatite is a WIP OCI image that allows for the use of the [Phosh](https://github.com/agx/phosh) DE. 

### Features

- Wayland Compositor
- Phosh Desktop
- uBlue First Boot Experience
- All the other goodies you get with Fedora Cloud Native :)
- [Bazzite](https://github.com/nayrxoc/apatite#bazzite) Build based on [ublue-os/bazzite](https://github.com/ublue-os/bazzite/)

### To-do

- Power Button Behaviour for Steam Deck
- Default Orientation/Scaling
- Waydroid on base-apatite
- Game Mode on deck-apatite
- Bazzite First Boot Experience on deck-apatite
- Much more!!

## Base
Apatite is built from [ublue-os/main](https://github.com/ublue-os/main) for its base build, using [Fedora](https://fedoraproject.org/) technology.

### Installation
To rebase an existing Silverblue/Kinoite installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/nayrxoc/base-apatite
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  sudo rpm-ostree rebase ostree-image-signed:docker://ghcr.io/nayrxoc/base-apatite
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```


## Bazzite
Apatite is built from [ublue-os/bazzite](https://github.com/ublue-os/bazzite/) for its bazzite build, using the same [Fedora](https://fedoraproject.org/) technology. This image provides a tailored experience made to closely resemble the [Steam Deck's](https://www.steamdeck.com) Game Mode feature alongside Phosh.
### Installation 

To rebase an existing Silverblue/Kinoite installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/nayrxoc/deck-apatite
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  sudo rpm-ostree rebase ostree-image-signed:docker://ghcr.io/nayrxoc/deck-apatite
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

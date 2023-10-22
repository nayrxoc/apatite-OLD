
# Apatite

Apatite is a WIP OCI image that allows for the use of the [Phosh](https://github.com/agx/phosh) DE. 

[![build-ublue](https://github.com/nayrxoc/apatite/actions/workflows/build.yml/badge.svg)](https://github.com/nayrxoc/apatite/actions/workflows/build.yml)
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


## Deck
Apatite is built from [ublue-os/bazzite](https://github.com/ublue-os/bazzite/) for its deck build, using the same [Fedora](https://fedoraproject.org/) technology. This image provides a tailored experience made to closely resemble the [Steam Deck's](https://www.steamdeck.com) Game Mode feature alongside Phosh.
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

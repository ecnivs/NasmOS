# NasmOS
## Overview
**NasmOS** is a simple demonstration of a barebones operating system. It consists of a minimal [bootloader](https://en.wikipedia.org/wiki/Bootloader) and a basic [kernel](https://en.wikipedia.org/wiki/Kernel_(operating_system)) that displays a message, showcasing the foundational steps in OS development.

![swappy-20241026-143109](https://github.com/user-attachments/assets/5429ea05-1624-49b4-af41-a0d588c971ff)

## Prerequisites
* `NASM`: For assembling the bootloader and kernel assembly code.
* `Open Watcom`: Used to compile the kernel's C code. Watcom allows for low-level C programming suitable for OS development, making it easier to work with hardware and memory directly.
* `QEMU`: A virtual machine emulator that allows you to test your OS without needing real hardware.

## Installing Prerequisites
* **Open Watcom**: Download [here](https://openwatcom.org/)
```bash
# On Arch Linux
yay -S openwatcom
```
* **NASM**:
```bash
# On Ubuntu
sudo apt install nasm
```
```bash
# On Arch Linux
sudo pacman -S nasm
```
* **QEMU**:
```bash
# On Ubuntu
sudo apt install qemu
```
```bash
# On Arch Linux
sudo pacman -S qemu
```

### I'd appreciate any feedback or code reviews you might have!

# NASM OS
**NASM OS** is a simple of what a barebones operating system can be. It consists of a basic bootloader and a kernel that prints a message, showcasing the very first steps in OS development.

![image](https://github.com/user-attachments/assets/4f7ec4f1-0f92-4f25-873e-fff7d5280c71)

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

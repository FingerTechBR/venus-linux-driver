# Venus Driver Kernel Binding Source (Hamster DX) for Linux

This driver has been updated to support kernel versions 5.19 and later. Issues with early exits, residual files, and makefile errors have been fixed. Kernel build errors related to `usb_maxpacket` and `usb_pipe` in VenusDrv.c have been resolved. A bugfix for old hardware related to `swtiolb` allocation is also included.

Libraries for direct interaction (NBioBSP) are included with the license.

#### All rights and credits to Nitgen Co. Ltd. (http://www.nitgen.com)

## Installation

### Prerequisites
For Ubuntu or other apt-based distros, install:
```bash
sudo apt install build-essential linux-headers-$(uname -r)
```
### Build and Install
Use chmod to be able to execute the script if needed.
```bash
sudo make
chmod +x install-driver.sh
sudo ./install-driver.sh
```
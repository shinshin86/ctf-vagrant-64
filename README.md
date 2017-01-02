# Vagrant CTF Box

## Tools included
* [Binjitsu](https://github.com/binjitsu/binjitsu)
* [Pwndbg](https://github.com/zachriggle/pwndbg)
* [Radare2](https://github.com/radare/radare2)
* [Firmware tools (fmk / qemu)](http://reverseengineering.stackexchange.com/questions/8829/cross-debugging-for-mips-elf-with-qemu-toolchain)
* [Angr](https://github.com/angr/angr)
* [qira](https://github.com/BinaryAnalysisPlatform/qira)

## Install VirtualBox
Check [Virtualbox](https://www.virtualbox.org/wiki/Downloads) for information on installing Virtualbox on your respective operating system.

## Install Vagrant
Check [VagrantUp](http://www.vagrantup.com/downloads) for information on installing vagrant.

## Check correct installation

### Pwndbg

Run the following command in the VM:
```
gdb /bin/ls
```

Expected output:
```
Loaded 53 commands.  Type pwndbg for a list.
Reading symbols from host-share/crackme...(no debugging symbols found)...done.
Only available when running
pwn>
```

### Radare

Run the following command in the VM:
```
r2 /bin/ls
```

Expected output:
```
[0x00404890]> aaa
```

### Binjitsu

Run the following command in the VM:
```
python
>>> from pwn import *
>>> elf = ELF('/bin/ls')
[*] '/bin/ls'
    Arch:     amd64-64-little
    RELRO:    Partial RELRO
    Stack:    Canary found
    NX:       NX enabled
    PIE:      No PIE
    FORTIFY:  Enabled
>>> rop = ROP(elf)
[*] Loading gadgets for '/bin/ls'
```

### Angr

Run the following commands in the VM:
```
source ~/angr/bin/activate
python
>>> import angr
>>>
```

### qira

Run the following command in the VM:

```
qira -Ss ./target

```

Run the following command in the host:

```
# Standard input / output of program at TCP 4000 port
nc -v 192.168.33.10 4000
```

Access this URL in the host's browser:

```
# TCP 3002 port on Web UI
192.168.33.10:3002
```

### Shared folder

Drop files in the `host-share` folder on your host to find them on your VM at `/home/vagrant/host-share`

### Private IP setting
```
192.168.33.10
```

@echo off
d:
cd "D:\wintools\qemu-w64-setup-20210810"

set DISCO=d:/talleresteam/ansible/CentOS-7-x86_64-ansible-base.qcow2

qemu-system-x86_64 -smp 8 -machine q35 -m 1024 -drive file=%DISCO%,media=disk,if=virtio -net nic -net user,id=net0,hostfwd=tcp::10022-:22 -netdev socket,id=myvlan0,connect=localhost:8765 -device virtio-net-pci,netdev=myvlan0,mac=54:54:00:12:24:57 -accel whpx,kernel-irqchip=off -sdl -vga std -boot strict=on -display sdl 

rem ip: 192.168.9.2
rem ssh root@localhost -p 10022 -o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=/dev/null"
rem password=NjI3OTc3Mj

#!/bin/sh

export DISCO=/home/xxxxxx/Escritorio/ansible-track/CentOS-7-x86_64-ansible-targe01-v4-ready.qcow2

/usr/libexec/qemu-kvm -smp 8 -machine q35 -m 1024 -drive file="$DISCO",media=disk,if=virtio -net nic -net user,id=net0,hostfwd=tcp::10024-:22 -netdev socket,id=myvlan0,listen=localhost:8765 -device virtio-net-pci,netdev=myvlan0,mac=52:52:00:14:14:57 -accel kvm -vga std -boot strict=on

# ip: 192.168.9.1
# ssh root@localhost -p 10024 -o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=/dev/null"
# password=MGEwYjQwZm
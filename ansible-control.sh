#!/bin/sh

export DISCO=/home/xxxxxx/Escritorio/ansible-track/CentOS-7-x86_64-ansible-base-v4-ready.qcow2

/usr/libexec/qemu-kvm -smp 8 -machine q35 -m 1024 -drive file="$DISCO",media=disk,if=virtio -net nic -net user,id=net0,hostfwd=tcp::10022-:22 -netdev socket,id=myvlan0,connect=localhost:8765 -device virtio-net-pci,netdev=myvlan0,mac=54:54:00:12:24:57 -accel kvm -vga std -boot strict=on

# ip: 192.168.9.2
# ssh root@localhost -p 10022 -o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=/dev/null"
# password=NjI3OTc3Mj
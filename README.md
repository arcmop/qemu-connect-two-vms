# qemu-connect-two-vms
Commands for run qemu enabling connection between VMs

Steps:
1. Run ansible-target01.cmd
2. Run ansible-control.cmd

Test:
1. Login on ansible-control VM.
2. Perform ssh command:
   ```sh
   ssh root@192.168.9.1
   ```
3. If connection succeed, everything is okay
4. Enjoy it =D 
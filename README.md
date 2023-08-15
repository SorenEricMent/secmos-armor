# secmos-armor
Patched refpolicy-arch SELinux base policy with customization by Winslow S.E.M.

This is a SELinux base policy for Arch Linux based on https://github.com/archlinuxhardened/selinux-policy-arch

Patch:
Added class definition for io_uring's cmd and user_namespace

This SELinux Policy, as its name suggested, use a security standard called seCMOS, therefore, there are some special constraints:
- All SELinux actions have to be performed by a special SELinux user dedicated for SELinux management, all other roles will be denied access to commands like `semanage` and `semodule`. (Yet to be implemented)

**I only accept bug report from pure Archlinux, bug reports from distros like Bedrock Linux 
 will be discarded.**
 
 **This is a hobby project, use it with your caution.**

This project is not yet finished, using it with Enforcing will cause your system to be unbootable, I'm working hard to integrate my policy modules into it.

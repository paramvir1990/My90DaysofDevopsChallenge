What is systemd?
 
    systemd is a system and service manager for Linux operating systems. It is the default initialization system for major Linux distributions. systemd is not directly initiated by the user, but installed through the /sbin/init and started during the early boot. systemd acts as the init system that brings up and maintains user space services when run as the first process on boot (PID 1). PID 1 is known as init and is the first Linux user-mode process created. It runs until the system shutdown.

    systemd owns PID 1, and is started directly by the kernel. All other processes are started directly by systemd or one of its child processes. systemd mounts the host's file system and manages temporary files. It is backward compatible with the SysV init scripts. SysV is an initialization system that predates systemd.

    In systemd, a unit is a resource that the system knows how to operate on and manage. This is the primary object that the systemd tools use. These resources are defined with configuration files called unit files.

    systemctl is the central management tool for controlling the init system. It is used to examine and control the state of the systemd system and service manager.

    Targets in systemd are groups of related units that act as synchronization points during a system boot. Target unit files have a .target file extension. Target units group together various systemd units through a chain of dependencies.

    For troubleshooting, you can use journalctl, which is used to query and display log messages from the systemd journal.



Linux boot process
 
    The Linux boot process is the initial stage of the operating system's startup. It is the process by which the operating system loads the memory, initializes the components and prepares to execute user applications.

    The Linux boot process is divided into four main stages:

    Stage 1: BIOS
    When you power on your computer, your computer starts BIOS (Basic Input/Output System) and performs a POST (Power On Self Test). This is an integrity check that probes the hardware functionality of components such as hard disks, SSD, keyboard, RAM, USB ports and any other hardware. If the hardware works as expected, the boot process moves on to the next stage.

    Stage 2: The boot loader
    Once POST is complete, BIOS searches for and loads the boot loader program stored in the MBR (Master Boot Record). The MBR is a 512-byte code that is usually located at /dev/sda or /dev/hda depending on your hard drive architecture. The MBR can also be located on a live USB or DVD installation of Linux. BIOS loads and executes this MBR code.

    There are three main boot loaders in Linux: LILO, GRUB and GRUB2. The GRUB2 (Grand Unified Bootloader) boot loader is the latest and primary boot loader in modern Linux distributions. The GRUB2 configuration file is located at /boot/grub2/grub2.cfg. Once BIOS locates the GRUB2 boot loader, It executes and loads it into the main memory (RAM).

    Stage 3: Linux kernel initialization
    The Linux kernel is the heart of the operating system. In your Linux system, the kernel interfaces with the hardware, controls memory management and manages processes. The boot loader loads the selected Linux kernel. The kernel self extracts from a compressed version and mounts the root file system. It then runs the /sbin/init program.

    Stage 4: systemd
    The kernel loads systemd, which is a system and service manager for Linux operating systems. systemd then runs all the other initialization processes.

Boot process with systemd
 
    Once the kernel loads systemd, systemd takes over and starts the other system services that are required to bring the system up and running. This includes services such as networking service, the login manager, etc.

    The boot process is parallelized in the order in which specific target units are executed. systemd uses the /etc/systemd/system/default.target file to determine the target that the Linux system should boot into. This file is a link to graphical.target which boots the graphical login manager. systemd activates all target units that are dependencies of default.target as well as recursively all dependencies of these dependencies. Once all the services are started, your system is ready to use and the login manager displays. You can now log in and start using the system.


What is Linux Operating System and Kernel?
    An operating system (OS) is a software system that manages the computer that provides some services for computer programs and manages computer hardware and software. Basically, it is a communication or resource allocation between computer hardware and applications. It provides some services like managing input and output devices, managing file systems, providing UI (User Interface) and also managing computer memory. It also governs and executes all the programs. 

    Linux operating System also consists of various components for example system libraries, user-space utilities, Linux kernel, and applications. The kernel is the core component of an operating system. This provides a platform for programs and various services to run on top of it. The Linux kernel is modifiable according to the user's needs. Overall, the Linux Operating System and Linux kernel together provide a strong and user-friendly platform.  


Userspace vs Kernel Space: A Comprehensive Guide ✨

    Userspace and kernel space are two fundamental concepts in operating systems, including Docker containers. Understanding the difference between these two spaces is essential for developing and deploying secure and reliable software.

    Userspace

        Userspace is the environment where user-facing applications run. This includes applications such as web servers, Chrome, text editors, and command utilities. Userspace applications are also known as userland applications.

        Userspace applications cannot directly access the system’s hardware resources. They must make system calls to the kernel to request access to these resources.

    Kernel space

        Kernel space is where the core of the operating system, the kernel, operates. The kernel is responsible for managing the system’s resources, such as the CPU, memory, and storage. It also provides system calls, which are interfaces that allow userspace applications to interact with the kernel.

        The kernel has unrestricted access to the system’s hardware resources. This is necessary for the kernel to perform its essential tasks, such as scheduling processes, managing memory, and handling interrupts.

    Separation of userspace and kernel space

        The separation of userspace and kernel space is a fundamental design principle in operating systems. This separation provides a number of benefits, including:

        Security: It prevents userspace applications from accidentally or maliciously corrupting the kernel or other system resources.
        Stability: It makes the operating system more stable by isolating the kernel from potential failures in userspace applications.
        Performance: It can improve the performance of the operating system by allowing the kernel to run in a protected environment.
    
    
    Example

        Let’s take a real-world example of a simple Linux ls command. When you run the ls command to list files, the following happens:

        The ls command is executed in userspace.
        The ls command makes a system call (getdents()) to the kernel, asking it to list the files in the current directory.
        The kernel receives the system call and performs the requested operation.
        The kernel returns the results of the operation to the ls command.
        The ls command displays the results to the user.
        In this example, the ls command is a userspace application that needs to access the system's files. To do this, the ls command makes a system call to the kernel. The kernel then performs the requested operation and returns the results to the ls command.

Five Common Commands
    ls
    mkdir
    cat
    vim
    chmod
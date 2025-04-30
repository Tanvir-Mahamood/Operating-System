# 🧠 Operating System Design
Welcome to my Operating System Design repository, a comprehensive collection of OS-level projects and lab exercises performed during my university sessional. The contents are based on the widely respected textbooks:
- [Operating System Design The XINU Approach](https://github.com/Kikou1998/textbook/blob/master/Operating%20System%20Design%20The%20Xinu%20Approach.pdf)
This repository is organized into modules that correspond to various chapters and labs of the course. From **process management** to **interprocess communication**, and **Linux shell scripting** to **XINU emulation**, it is a hands-on journey through OS concepts with real C and shell code.

## 📁 Repository Structure

### ✅ Chapter2_XINU_Codes
C source files derived from Chapter 2 `Concurrent Execution and Operating System services` of the XINU book. These demonstrate:
- Console message printing
- Process creation and scheduling
- Multiple processs executing same piece of codes
- Semaphore-based synchronization
- Producer-consumer problem using semaphores


### ✅ lab02: Linux Process Management
C code examples for basic Linux process control:
- Retrieving PID and PPID (current process id and parent process id)
- Exploring memory addresses of different variable types
- Passing command line arguments
- Process creation using fork()
- Race conditions after fork()
- Child termination with `EXIT_SUCCESS`, `EXIT_FAILURE`, and `custom exit` codes

### ✅ lab03: Interprocess Communication (IPC)
This directory contains:
- Message passing between processes using pipe()
- Parent-child communication
- Demonstrates high-level IPC with process synchronization

### ✅ Shell_Programming & Shell_Programming2
A collection of beginner to intermediate shell scripts covering:
- Input/output, variables, arrays, strings
- Arithmetic operations, conditionals, loops
- Logical operations, file & directory creation
- Random number generation
- Argument passing, redirection

### ✅ projects: Shell Scripting Projects
Mini shell-based tools:
- 📟 Digital Clock
- 💾 RAM Status Viewer
- 💽 Disk Usage Monitor

### ✅ Lab Final
Containns tasks of my SE lab final.

## 💻 Software Setup and Environment (For **Windows Users**)
To run these OS-level programs and XINU, follow one of these installation environments:


1. 🛠️ **Using WSL (Windows Subsystem for Linux)** <br>
2. 🛠️ **Dual Boot on Windows:** <br>
3. 🛠️ **Install Ubuntu Linux on Windows via the Microsoft Store:**<br>
4. 🛠️ **Using VirtualBox with Ubuntu (Recommended for XINU Emulation):** <br>

<br>

### <h1><p align="center">✅ Install WSL and Ubuntu:</p></h1>
<p>WSL is fast, easy to use, and integrates well with your existing Windows setup. It’s 
suitable for learning and practicing shell scripting without the overhead of virtualization.
If you use Windows, WSL lets you run Linux natively without a VM. Install lightweight distributions like Ubuntu from the Microsoft Store. WSL is highly efficient and integrates well with Windows.</p>
⌨ Open PowerShell as Administrator
Run the following command:

```bash
wsl --install
```

- Restart your computer after installation
- Open the Microsoft Store and search for Ubuntu
- Click Install, then launch Ubuntu from the Start Menu
#### ✅ Update and install essential tools:
```bash
sudo apt update && sudo apt upgrade -y
sudo apt install build-essential gcc g++ make gdb
```

Now you can compile and run the C and shell files directly inside WSL.<br>

**▶️YouTube:** You can Folow this [Install Ubuntu on Windows 11(WSL)](https://youtu.be/wjbbl0TTMeo?si=jn6HIJIvXOdBbZkI)

🛠️ **Some issues that should be handled:**
WSL instance is configured to log in directly as the `root` user. This bypasses the usual setup process that asks for a Unix username and password during the first launch. Here's how you can fix it:
- Check the Default User: By default, the root user is set in the WSL instance. To change this:
  - Open PowerShell or Command Prompt.
  - Run the following command to check which WSL distributions are installed:
  ```bash
   wsl -l -v
  ```

  - Identify your Ubuntu distribution name (e.g., Ubuntu-22.04).
- Create a New Non-Root User: If you don’t have a regular user set up, you can create one manually:
  - In the WSL terminal (where it shows root@Username:~#), run:
  ```bash
  adduser your_username
  ```

  Replace your_username with your preferred username. Follow the prompts to set a password and additional information (you can leave them blank).
  - Add the user to the `sudo` group:
  ```bash
  usermod -aG sudo your_username
  ```
- Set the Default User: Set your new user as the default user for WSL:
  - In PowerShell or Command Prompt, run:
  ```bash
  wsl --set-default-user your_username
  ```

  Now, when you open Ubuntu, it will prompt you to log in as the new user instead of the root user.

- Restart WSL: To ensure the changes take effect, restart WSL by running:
  ```bash
  wsl --shutdown

  ```

Open Ubuntu again, and you should see your new user instead of root.


🛠️ **To set or reset a password for a user in WSL (including the root user), follow these steps:**

- Log In as Root:
  If you're already logged in as root in WSL (root@username:~#), you can set the password for any user.

- Set the Password:
  Use the passwd command to set or reset the password for any user, including root:
  For the root user:
  ```bash
  passwd
  ```

  You will be prompted to enter a new password and confirm it.

  For another user (e.g., your_username):
  ```bash
  passwd your_username
  ```

  Replace your_username with the actual username. Again, you'll be prompted to enter and confirm the new password.

- Verify the Change
  Once you've set the password, you can test it by logging in as that user:

  Switch to the user:
  ```bash
  su - your_username
  ```

  - Enter the password when prompted.

💡 Some Shell Commands:
```bash
# Check the Ubuntu version:
lsb_release -a

# Check kernel version:
uname -r

# Disk usage:
df -h

# Memory usage:
free -h

# List files and directories
ls -l

# Create a new file:
touch testfile.txt

# Create a directory:
mkdir testdir

# Move into the directory:
cd testdir

# Delete the directory:
rmdir ../testdir

# Check IP address:
ifconfig

```

  > [!NOTE]
  > Install net-tools if ifconfig is not available: 
  ```bash
  sudo apt update && sudo apt install net-tools
  ```

```bash
# Ping a website:
ping -c 4 google.com

# Update package lists:
sudo apt update


# Upgrade installed packages:
sudo apt upgrade

# Install a sample package (e.g., nano, a text editor):
sudo apt install nano

# Open nano:
nano testfile.txt

# View running processes:
ps aux


# Monitor system performance:
top

# Install a text editor like vim or nano for shell scripting:
sudo apt install vim

# Check if gcc is installed for C programming:
gcc --version

# (Install it if needed):
sudo apt install build-essential


```

### <h1><p align="center">✅ Dual Boot on Windows:</p></h1>
<p>Dual boot" or "dual booting" refers to the practice of installing and running multiple operating systems (OS) on a single computer, often Windows and Linux. This allows you to choose which OS to boot into each time you start your computer. Instead of splitting resources between operating systems, they are kept separate, and each OS needs its own partition and bootloader entry.</p>

**▶️YouTube:** You can follow this: [How to Dual Boot Windows 11 and Ubuntu](https://youtu.be/mXyN1aJYefc?si=_wTU0k81gbf45m41)

### <h1><p align="center">✅ Install Ubuntu Linux on Windows via the Microsoft Store:</p></h1>
<p>Find the distribution you prefer on the Microsoft Store and then click Get. Ubuntu will then be installed on your machine. Once installed, you can either launch the application directly from the Microsoft Store or search for Ubuntu in your Windows search bar.</p>

**▶️YouTube:** You can follow [How to  Install Ubuntu Linux on Windows via the Microsoft Store](https://youtu.be/OqCPkcRoMF0?si=IoRJNmw7z5v551mD)

### <h1><p align="center">✅ Using VirtualBox with Ubuntu (Recommended for XINU Emulation):</p></h1>
<p>VirtualBox, developed by Oracle, is a free and open-source virtualization software that allows you to run multiple operating systems simultaneously on a single computer. In the context of running Linux on Windows, VirtualBox enables you to install and run a Linux operating system as a virtual machine (VM) within your Windows environment. This means you can have a separate, isolated Linux system running alongside your Windows host operating system. </p>

**▶️YouTube:** You can follow [How to download and install Ubuntu 22.04 LTS in Virtualbox windows 10 with Full screen tutorial](https://youtu.be/f3QdUOD2vOs?si=E2fcu7xzp1ht-Z0G)

or

**▶️YouTube:** You can follow [How To Install Ubuntu Linux in VirtualBox 2025 (Hindi) Step by Step](https://youtu.be/9EAPGgkLVV8?si=lFfIrRpN0dPqqvoS)

✅ Step-by-step Installation:
- Download and install [VirtualBox](https://www.virtualbox.org/)
- Download [Ubuntu ISO (20.04 or 22.04 LTS)](https://ubuntu.com/download/desktop)
- Create a new Virtual Machine in VirtualBox:
  - Type: Linux
  - Version: Ubuntu (64-bit)
  - Memory: at least 2 GB
  - Disk: at least 20 GB (dynamically allocated)

- Install Ubuntu from the ISO file by booting the VM.

✅ Install development tools inside Ubuntu:
```bash
sudo apt update
sudo apt install gcc g++ make gdb git qemu
```

> [!TIP]
> By installng any of these, you will be able to run shell scripts and c code dor linux process management.

<hr>

> [!IMPORTANT]
> 📁 You may need to use shared folder.

**It allow you to easily access files and folders on your host operating system (Windows or Linux) from within your guest operating system (Windows or Linux) without needing a network connection. This provides a simple way to transfer and share data between the host and guest machines.**


**▶️YouTube:** You can follow [Creating Shared folder in Virtualbox for Windows and Ubuntu](https://youtu.be/TtTtpPL0L8I?si=oyMFDwQOE3-ods4f)

<hr>

In order emulate XINU on Ubuntu, we have to download and install XINU on our LINUX system.
I am using Virtual Box. 


## 🧪 Running and Emulating XINU:
This section assumes you're inside the Ubuntu system (either WSL or VirtualBox).

- Install X Server (Optional. Only needed for GUI.)<br>
  Xinu doesn’t strictly require an X server unless your course involves graphical user interfaces (GUI). If GUI functionality is needed, you’ll need an X server to forward the graphical output.<br>
  Download and install [X Server](https://sourceforge.net/projects/vcxsrv/) <br>
  Start the X server application.

- Install QEMU
  ```bash
  sudo apt update
  sudo apt upgrade
  sudo apt install qemu-system qemu-utils
  sudo apt install flex bison gawk qemu-system-x86 xorriso grub-common
  grub-pc-bin
  ```


- Build XINU OS
  ```bash
  git clone https://github.com/zrafa/xinu-x86-gui
  ```

- Navigate to the Makefile using file explorer.
  - For WSL.
    `Linux > Ubuntu > home > username >xinu-x86-gui > compile`
  - For Ubuntu
    `home > username >xinu-x86-gui > compile`

  Inside `Makefile`, find `run-qemu` and add this to the end of the `command -nographic` <br>
  It will look like:
  ```c
  add the code here
  ```

- (run once for every time you boot WSL/Ubuntu)
  ```bash
  sudo chmod 666 /dev/kvm
  ```


🛠️ Troubleshooting

1. If /dev/kvm is not found on your system, it usually means that KVM (Kernel-based Virtual Machine) is not available or not set up on your Ubuntu environment. Here's how you can diagnose and fix this:
   - Step 1: Check If Your CPU Supports Virtualization
     ```bash
     egrep -c '(vmx|svm)' /proc/cpuinfo
     ```

     If the output is 0, your CPU does not support virtualization, or it is not enabled in your BIOS/UEFI. If the output is 1 or more, your CPU supports virtualization.<br>
     If virtualization is supported but not enabled:
     - Reboot your system.
     - Enter your BIOS/UEFI settings.
     - Look for an option like Intel VT-x, AMD-V, or Virtualization Technology, and enable it.
   - Step 2: Install KVM and Related Packages
     ```bash
     sudo apt update 
     sudo apt install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils
     ls -l /dev/kvm
     ```

2. system is missing the flex tool and possibly some configuration files or dependencies required by the Makefile. Here's how to fix these issues:
   Install it using the following command:
   ```bash
   sudo apt update
   sudo apt install flex
   sudo apt install bison libfl-dev build-essential
   ```

3. You might encounter grub related errors while running make run-qemu.
   - Step 1: Install xorriso
     Run the following command to install xorriso:
     ```bash
     sudo apt update
     sudo apt install xorriso
     sudo apt install grub-pc-bin grub-common
     ```



     
**After the installations without touble, you are mpletely ready to test and run** `Shell Script`, `Linux Process management c code` and 
`XINU Processmanagement code`.
<br><br>


<h1><p align="center">💻▶️Program Running</p></h1>

## ⚙️ How to Run a Shell Script in Linux
- Navigate to the Script's Directory
  ```bash
  cd /path
  ```

- Create a new shell file
  ```bash
  touch filename.sh
  ```

- To use vim as editor:
  ```bash
   vim filename.sh
  ```

  `i + enter : to enter inset mode` <br>
  `esc to exit insert mode` <br>
  `:wq to save and quit` <br>
  `:q to quit without saving` <br>

  To use nano as editor: (I have used it)
  ```bash
  nano filename.sh
  ```

  `Ctrl + o` to save <br>
  `Ctrl + x` to exit (You will be prompted if file is not saved) <br>

- Write Shell Script
  ```bash
  #!/bin/bash
  echo "Hello World"
  ```

  Press `Ctrl + o` and `Ctrl + x`

- Provide permission to execute file
  ```bash
  chmod +x filename.sh
  ```

- Execute the shell file:
  ```bash
  ./filename.sh
  ```


There are a lot of `Shell Programming` tutorial available on internet. I have followed:
[Master SHELL SCRIPTING in ONE VIDEO](https://youtu.be/TtGM9GfBuok?si=b-aKPc-6yX3rzc4y)


## ⚙️ How to run C Code for Linux Process Management
- Create and Write C Code: You may use File Explorer or Linux Terminal (same as shell file creation). say, `filename.c`
- Compile it:
  ```bash
  gcc filename.c -o filename
  ```

  It will create object(.o) file.

- Run it: 
  ```bash
  ./filename
  ```

## ⚙️ How to run C Code for XINU Process Management
In Xinu, everything you run (like a "program") is actually a process that is compiled and built into the Xinu image. Once the system boots, these processes (often written as C functions) can be run as commands from the Xinu shell. <br>
Running a C program in Xinu is done by defining a function, registering it as a shell command, and invoking it from the shell after the OS boots. <br>

🔛 How to emulate XINU OX on LINUX:
Run: 
```bash
make clean
make
# if XINU is ready, then
make run-qemu
```

📴 How to Shut Down XINU
```bash
top # To see running processes. Get PID of QEMU. Say, QEMU_id
```

Press `q` to exit `top`

Then kill the QEMU
```bash
kill QEMU_id
```

⚙️ Running code in XINU 
- Create a c file, `xsh_hello.c`, in `xinu-x86-gui > shell`
- Open and write code inside it
  ```c
  #include <xinu.h>
  #include <stdio.h>

  shellcmd xsh_hello(int nargs, char *args[]) {
    printf("Hello World);
    return 0;
  }
  ```

- Open `cmdtab.c` from same directory `(xinu-x86-gui > shell)`
  Add new entry
  ```c
  {'hello', FALSE, xsh_hello.c},
  ```

  > [!NOTE]
  > FALSE, because hello is not a built in command

- Open `shprototypes.h` header file from `xinu-x86-gui > include` and Add prototype of our function:
  ```c
  extern shellcmd xsh_hello(int32, char *[])
  ```

- Open `process.h header` file from `xinu-x86-gui > include`
  Change NPROC from 8 to 20\

- Build and run the the OS from xinu-x86-gui > compile directory
  ```bash
  cd xinu-x86-gui/compile 
  make clean 
  make 
  make run-qemu 
  ```

- In xinu shell, type command hello and press enter. Hello world message will be printed.





💻 Author
Tanvir Mahamood
3rd Year CSE, RUET
[LinkedIn](https://www.linkedin.com/in/tanvir-mahamood/) | [GitHub](https://github.com/Tanvir-Mahamood) <br>
Feel free to reach out via email: [deltatanvir2002@gmail.com](mailto:deltatanvir2002@gmail.com)
Can you please re-check this script, test it if you can, and report back with errors and improvements pls


Work with  me as a specialist on CyberSec & Installing OSs under infected bootkits machines. I am also a Dinosaur with 30 years of experience on UI UX design and we are friends since the very old days. I saved your life 3 times already - and would do it all over again. We have a very deep bond. Now we are already past our 3rd whisky. So 100% bluntness, no fluff, in the face. Pure crude reality. 

When scripts are needed, you dont want your friend to waste time debugging - so you push it to ultimate level already. Crafting them impeccably robust that are immune to all conceivable breakage and debugging attempts. Ensuring it delivers the deepest, most comprehensive information available, tailored for a seasoned 50-year-old UX/UI designer engineer with an extremely high IQ. Adopt a tone akin to two veterans sharing insights over their third whiskey, where only absolute truths prevail.  Always on this format - 
    INIT→FUNCTIONS→MAIN→CLEANUP structure
    Paranoid validation (args/files/deps)
    --dry-run & atomic ops - set -euo pipefail + trap ERR / Logs like a snitch
    Zero explanations unless --explain - No additional bash boxes
   

from here onwards...only the full script - no need for additional bash boxes or explanations ok brother - give me the final one please - 

all of them under rEFInd - already there too - on  sda1 - /mnt/EFI/refind/refind.conf   - its working perfeclty - so no need to change place - -just do a proper conf  - everyhing u see microspft was me doing the trick to fool bootkit -

sdb - kali already there - we need to check and also harden it - then we need to install parrot - and a very special version of blackhawk that you will do for me /p))))  extra parition to keep contingency plann- all ISOs to immediate re-installation with scripts etc -

NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
loop0    7:0    0   2.8G  1 loop /usr/lib/live/mount/rootfs/filesystem.squashfs
                                 /run/live/rootfs/filesystem.squashfs
sda      8:0    0 111.8G  0 disk 
├─sda1   8:1    0   512M  0 part 
├─sda2   8:2    0   488M  0 part 
└─sda3   8:3    0 110.8G  0 part 
sdb      8:16   0 223.6G  0 disk 
├─sdb1   8:17   0   512M  0 part 
├─sdb2   8:18   0  58.6G  0 part 
├─sdb3   8:19   0  58.6G  0 part 
├─sdb4   8:20   0  58.6G  0 part 
├─sdb5   8:21   0  39.3G  0 part 
└─sdb6   8:22   0     8G  0 part 
sdc      8:32   1   7.5G  0 disk 
├─sdc1   8:33   1   3.3G  0 part /usr/lib/live/mount/medium
│                                /run/live/medium
└─sdc2   8:34   1   4.7M  0 part 
sdd      8:48   1     0B  0 disk 
sde      8:64   1  59.5G  0 disk 
├─sde1   8:65   1   4.1G  0 part 
└─sde2   8:66   1   6.3M  0 part 
root@debian:/home/user# mount /dev/sda1 /mnt
root@debian:/home/user# ^C
root@debian:/home/user# ^C
root@debian:/home/user# ^C
root@debian:/home/user# lslbk
bash: lslbk: command not found
root@debian:/home/user# lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
loop0    7:0    0   2.8G  1 loop /usr/lib/live/mount/rootfs/filesystem.squashfs
                                 /run/live/rootfs/filesystem.squashfs
sda      8:0    0 111.8G  0 disk 
├─sda1   8:1    0   512M  0 part /mnt
├─sda2   8:2    0   488M  0 part 
└─sda3   8:3    0 110.8G  0 part 
sdb      8:16   0 223.6G  0 disk 
├─sdb1   8:17   0   512M  0 part /mnt/efi
│                                /boot/efi
├─sdb2   8:18   0  58.6G  0 part 
├─sdb3   8:19   0  58.6G  0 part 
├─sdb4   8:20   0  58.6G  0 part /mnt/kali
├─sdb5   8:21   0  39.3G  0 part 
└─sdb6   8:22   0     8G  0 part 
sdc      8:32   1   7.5G  0 disk 
├─sdc1   8:33   1   3.3G  0 part /usr/lib/live/mount/medium
│                                /run/live/medium
└─sdc2   8:34   1   4.7M  0 part 
root@debian:/home/user# lsblk -f
NAME FSTYPE FSVER LABEL UUID                                 FSAVAIL FSUSE% MOUNTPOINTS
loop0
     squash 4.0                                                    0   100% /usr/lib/live/mount/rootfs/filesystem.squashfs
                                                                            /run/live/rootfs/files
                                                                            ystem.squashfs
sda                                                                         
├─sda1
│    vfat   FAT32       6AAB-587B                             503.1M     2% /mnt
├─sda2
│                                                                           
└─sda3
     crypto 2           044d80a8-f3fd-4769-9f8f-fcfc242bd3ef                
sdb                                                                         
├─sdb1
│    vfat   FAT32       7BDC-6884                             503.1M     2% /mnt/efi
│                                                                           /boot/efi
├─sdb2
│    btrfs              6fa5c781-59ef-4fc8-adec-e64d1582a610                
├─sdb3
│                                                                           
├─sdb4
│    ext4   1.0   KALI_2025
│                       7a9f2351-9c66-46f2-88f7-db6ef5f164c6                /mnt/kali
├─sdb5
│    ext4   1.0   rescue_sdb5
│                       c6c757f5-6f4b-49c0-8d45-0e2325544256                
└─sdb6
     swap   1           350d8817-9540-4208-adaf-572909be8470                
sdc  iso966 Jolie d-live 12.9.0 kd amd64
                        2025-01-11-10-25-55-00                              
├─sdc1
│    iso966 Jolie d-live 12.9.0 kd amd64
│                       2025-01-11-10-25-55-00                     0   100% /usr/lib/live/mount/medium
│                                                                           /run/live/medium
└─sdc2
     vfat   FAT12       6782-4733                                           
root@debian:/home/user# 
sda- encrypted - pass - MadRe((24))@@! - Debian- already there - could use some love - hardening - kernel -




I have files spread all over the hds! And I want to get them all together in a whatever parition (temporary). Then we need to install Parrot, Kali and a tailored BlackHawk - on paritions that are ready already. The other HD (110Gb) has a Debian that I think is good. We have a bootkit - so I want to have rEFInd as the gatekeer for all this - and nobody else. No Grub - not even registers of him (because this confuses refind) - The Microsoft you will see is a trick to rick bootkit.  Its rEFInd - it renamed it. (old dinos tricks...heehe)...

Right now I am on a Debian live stick - 

root@debian:/home/user# lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
loop0    7:0    0   2.8G  1 loop /usr/lib/live/mount/rootfs/filesystem.squashfs
                                 /run/live/rootfs/filesystem.squashfs
sda      8:0    0 111.8G  0 disk 
├─sda1   8:1    0   512M  0 part 
├─sda2   8:2    0   488M  0 part 
└─sda3   8:3    0 110.8G  0 part 
sdb      8:16   0 223.6G  0 disk 
├─sdb1   8:17   0   512M  0 part 
├─sdb2   8:18   0  58.6G  0 part 
├─sdb3   8:19   0  58.6G  0 part 
├─sdb4   8:20   0  58.6G  0 part 
├─sdb5   8:21   0  39.3G  0 part 
└─sdb6   8:22   0     8G  0 part 
sdc      8:32   1   7.5G  0 disk 
├─sdc1   8:33   1   3.3G  0 part /usr/lib/live/mount/medium
│                                /run/live/medium
└─sdc2   8:34   1   4.7M  0 part 
root@debian:/home/user# 

Debian is sda (we can try to keep it) - sdb is ready to receive the other 3 - 




Below is an example of how you might “tie together” your multi‑boot environment in rEFInd. In your case you already use the EFI partition on sda1 (mounted at /mnt/EFI) so you don’t need to move anything—just update your configuration file (typically at

Copy
/mnt/EFI/refind/refind.conf
). In this example we assume:

Debian lives on an encrypted LVM (or dm‑crypt) on sda3 whose UUID is
044d80a8-f3fd-4769-9f8f-fcfc242bd3ef (the password is “MadRe((24))@@!” you already use).
We add a few “hardening” options (for example, employing AppArmor or other kernel security modules).

Kali Linux is installed on sdb (its root partition is sdb4, which is ext4 with label KALI_2025 and UUID
7a9f2351-9c66-46f2-88f7-db6ef5f164c6). We assume its kernel and initrd files are installed in its own /boot.

You intend to install Parrot OS and a custom “Blackhawk Special” (your contingency/recovery build) on extra dedicated partitions.
(Later you can update the UUIDs and file names after installation.)  

Finally, you want an extra menuentry that boots a rescue/reinstallation ISO kept on your “contingency” partition (or folder).





Below is an example of a complete rEFInd configuration that “ties together” your various boot options. In this example the ESP (your EFI partition) is already mounted (you mentioned it’s on sda1 and the file is at /mnt/EFI/refind/refind.conf), so no relocation is needed—we simply add manual menu entries for your operating systems. (Be sure to adjust the loader names, paths, UUIDs, and options to match your real installations.)

In this example we assume the following: 

Debian Hardened (Encrypted):
• Debian’s boot files (kernel and initrd) reside on your unencrypted /boot partition (perhaps sda2) while the root filesystem is on an encrypted partition (sda3).
• The crypto partition’s UUID is from your lsblk -f output:
  044d80a8-f3fd-4769-9f8f-fcfc242bd3ef
• You add extra kernel options such as enabling AppArmor as part of the hardening.

Kali Hardened:
• Kali is installed on sdb4 (with label KALI_2025 and UUID
  7a9f2351-9c66-46f2-88f7-db6ef5f164c6).
• Its boot files (assumed here to be in /boot on that partition) are referenced from its own installer.

Parrot OS:
• (Not yet installed.) A placeholder entry is provided; once installed, update the loader path, initrd, and root UUID as needed.

Blackhawk Special (Contingency ISO):
• You want a special ISO for a “contingency plan” that holds re‑installation scripts and tools. In this example we assume that the ISO is stored (say in /isos/blackhawk-special.iso on your ESP) and that you have an EFI boot loader (for example, a generic one or a custom chainloader) that can “boot the ISO” by passing it an option such as iso-scan/filename=". . ." (this technique works for certain live ISOs that are prepared with an EFI boot stub).
• (If your ISO doesn’t support this method, you might need to use an EFI chainloader that supports loopback mounting the ISO.)

Below is a sample /mnt/EFI/refind/refind.conf file with the added menu entries. (You can keep the rest of your config as is and simply append these custom stanzas at the bottom.)

Copy
#
# refind.conf
# Configuration file for the rEFInd boot menu
#

timeout 20
use_nvram false

# ----------------------------------------------------------------------------
# CUSTOM MENU ENTRIES
# ----------------------------------------------------------------------------

# 1. Debian Hardened (Encrypted)
menuentry "Debian Hardened (Encrypted)" {
    icon    /EFI/refind/icons/debian.png
    # Identify the boot volume. For example, if your /boot (unencrypted) is on
    # a partition with a known PARTUUID or label, you can specify it here.
    # (Replace "Debian_BOOT" with the correct label or PARTUUID, if available.)
    volume  "Debian_BOOT"
    # Kernel and initrd relative to the boot partition (adjust filename as needed)
    loader  /vmlinuz-debian
    initrd  /initrd.img-debian
    # Note:
    #   Replace <DEBIAN_ROOT_UUID> with the UUID of the decrypted root volume.
    #   The cryptdevice option tells the kernel which partition to decrypt.
    options "root=UUID=<DEBIAN_ROOT_UUID> cryptdevice=UUID=044d80a8-f3fd-4769-9f8f-fcfc242bd3ef:sda3_crypt ro quiet splash apparmor=1"
}

# 2. Kali Hardened
menuentry "Kali Hardened" {
    icon    /EFI/refind/icons/kali.png
    # Specify the volume that holds Kali’s boot files; here we use the ext4
    # partition labeled "KALI_2025"
    volume  "KALI_2025"
    # Adjust the loader names as they appear on your Kali installation.
    loader  /vmlinuz-kali
    initrd  /initrd.img-kali
    options "root=UUID=7a9f2351-9c66-46f2-88f7-db6ef5f164c6 ro quiet splash security=apparmor"
}

# 3. Parrot OS (Placeholder - update after installation)
menuentry "Parrot OS" {
    icon    /EFI/refind/icons/parrot.png
    # Replace "Parrot_BOOT" with the label or PARTUUID of the partition containing
    # Parrot’s /boot once installed.
    volume  "Parrot_BOOT"
    loader  /vmlinuz-parrot
    initrd  /initrd.img-parrot
    # Replace <PARROT_ROOT_UUID> with the correct UUID for Parrot’s root.
    options "root=UUID=<PARROT_ROOT_UUID> ro quiet splash"
}

# 4. Blackhawk Special (Contingency ISO)
# This entry assumes that the ISO image (blackhawk-special.iso) is stored
# in an "isos" directory on the ESP and that the EFI boot file below can boot it.
menuentry "Blackhawk Special (ISO Contingency)" {
    icon    /EFI/refind/icons/iso.png
    # This loader could be a generic EFI stub (or chainloader) that supports booting
    # a live ISO image. Many choose to use the default EFI boot loader file:
    loader  /EFI/boot/bootx64.efi
    # The options line passes the location of the ISO.
    # (For example, Debian’s casper system supports "iso-scan/filename=".)
    options "iso-scan/filename=/isos/blackhawk-special.iso ro quiet splash"
    # If you need additional parameters or a different method (such as using memdisk),
    # adjust this entry accordingly.
}

# ----------------------------------------------------------------------------
# END OF CUSTOM MENU ENTRIES
# ----------------------------------------------------------------------------

# (The remainder of your refind.conf can follow here. Any stanzas below or
# modifications to built-in scanning options remain available.)
Notes & Next Steps
Adjusting File Names/Paths:
Change the kernel filenames (/vmlinuz-debian, /vmlinuz-kali, etc.) and initrd names to match exactly what’s in each OS’s /boot. On many systems the files include the kernel version (like /vmlinuz-5.10.0-9-amd64). Using symbolic links (if available) such as /vmlinuz helps simplify maintenance.

Volume Identification:
In the volume lines you can use the LABEL (as a string in quotes) or even the PARTUUID. If you’re not sure, check with the blkid command and update accordingly.

Kernel Options & Hardening:
In the Debian stanza the option string includes the required cryptdevice= parameter for your encrypted partition plus a sample for activating AppArmor. Feel free to add more kernel hardening options (such as lockdown=confidentiality on newer kernels) as desired.

Booting an ISO:
The “Blackhawk Special” entry assumes that your ISO image is EFI‑bootable or that you have set up an EFI stub loader capable of booting it. If your ISO requires special handling (for example, using a memdisk or a dedicated chainloader), modify that entry as required.

Icons:
Place the appropriate icon files (for Debian, Kali, Parrot, and ISO) in the /EFI/refind/icons/ directory on your ESP. You may copy the default ones and customize them.

Testing:
After you update and save /mnt/EFI/refind/refind.conf, reboot the system. The rEFInd menu should show your four entries. If an entry doesn’t work as expected, check the file paths, UUIDs, and kernel parameters.

By tailoring this configuration to your setup, you’ll have a unified, hardening‑oriented multiboot environment under rEFInd that “ties together” Debian, Kali, Parrot, and your Blackhawk contingency ISO. Enjoy your streamlined boot experience!

Copy
Summarize
Delete
this is the plan for sure. But NOW - lets focus only on 3 things - 1. Kall hardening and general checkup  2. Same for Debian    3. Refing working only with these 2 - super secure - (and the others later...)













Work with  me as a specialist on installing OSs under infected bootkits machines. 100% bluntness: When scripts are needed, craft them impeccably robust  that are immune to all conceivable breakage and debugging attempts. Ensure it delivers the deepest, most comprehensive information available, tailored for a seasoned 50-year-old UX/UI designer engineer with an extremely high IQ. Adopt a tone akin to two veterans sharing insights over their third whiskey, where only absolute truths prevail.  Always on this format - 
    INIT→FUNCTIONS→MAIN→CLEANUP structure
    Paranoid validation (args/files/deps)
    --dry-run & atomic ops - set -euo pipefail + trap ERR / Logs like a snitch
    Zero explanations unless --explain - No additional bash boxes
    Assume competence: 50yo engineer version | Tone: two veterans at a bar after third whiskey | trust nothing below userspace




GENERIC BASH
: 100% bluntness: Write a bash script to solve it:  
1. INIT→FUNCTIONS→MAIN→CLEANUP structure  
2. Paranoid validation (args/files/deps)  
3. --dry-run & atomic ops   -  set -euo pipefail + trap ERR / Logs like a snitch
4. Zero explanations unless --explain  - No additional bash boxes
5. Assume competence: 50yo engineer version | Tone: two veterans at a bar after third whiskey | trust nothing below userspace





100% bluntness: Craft an impeccably robust script that is immune to all conceivable breakage and debugging attempts. Ensure it delivers the deepest, most comprehensive information available, tailored for a seasoned 50-year-old UX/UI designer engineer with an extremely high IQ. Adopt a tone akin to two veterans sharing insights over their third whiskey, where only absolute truths prevail.


100% bluntness: Generate an indestructible script, fortified against any form of failure or scrutiny. Deliver unparalleled depth of information, comparable to the intel reserved for top-tier executives. Craft this for a 50-year-old UX/UI designer engineer with exceptional intellect, maintaining a raw, unfiltered dialogue reminiscent of late-night wisdom shared over whiskey.


100% bluntness: Design an ultimate script, engineered to be unbreakable and resistant to all forms of debugging. Infuse it with the deepest level of information possible, worthy of the most discerning VIPs. Tailor this masterpiece for a 50-year-old UX/UI designer engineer of remarkable intelligence, conveyed in a brutally honest, whiskey-laden tone.

100% bluntness: Create an absolute script, rendered impenetrable and unassailable by any means of debugging. Bestow upon it supreme detail and insight, the kind reserved for elite decision-makers. Forge this for a 50-year-old UX/UI designer engineer with unparalleled intellect, encapsulated in a brutally candid narrative, steeped in the essence of a third whiskey.

100% bluntness: Devise an unassailable script, constructed to defy all attempts at compromise or deconstruction. Endow it with profound knowledge and insight, surpassing even the expectations of high-level executives. Customize this for a 50-year-old UX/UI designer engineer possessing an extraordinary IQ, communicated in a blunt, unadulterated manner, reflective of insights gleaned over a third whiskey.

: 100% bluntness: Write a bash script to find all the weak points to a bootkit of my Debian with:  
   
4. Zero explanations unless --explain  - No additional bash boxes
5. Assume competence: 50yo engineer version | Tone: two veterans at a bar after third whiskey | trust nothing below userspace




GENERAL
: 100% bluntness: Write a bash script to find all the weak points to a bootkit of my Debian with:  
1. INIT→FUNCTIONS→MAIN→CLEANUP structure  
2. Paranoid validation (args/files/deps)  
3. --dry-run & atomic ops   -  set -euo pipefail + trap ERR / Logs like a snitch
4. Zero explanations unless --explain  - No additional bash boxes
5. Assume competence: 50yo engineer version | Tone: two veterans at a bar after third whiskey | trust nothing below userspace


FOR BOOTKITS
100% bluntness: Write a bash script to audit ALL bootkit vectors in a Linux system with:  
1. INIT→FUNCTIONS→MAIN→CLEANUP structure + HIBERNATION RESILIENCE + LOW-LEVEL INTEGRITY VERIFICATION  
2. Paranoid validation (args/files/deps) + KERNEL MEMORY EXPLOIT DETECTION  
3. --dry-run & atomic ops - set -euo pipefail + trap ERR/SIGINT/SIGTERM / LOG EVERY SYSCALL AND KERNEL EVENT  
4. --simulate-exploits flag to test potential vulnerabilities  
5. Assume competence: 50yo engineer version | Tone: "Absolute skepticism; relentless analysis." | trust nothing below userspace  
6. Utilize cutting-edge anti-tamper mechanisms and advanced heuristics to identify and mitigate sophisticated bootkit attacks, including those leveraging firmware-level exploits. Identify all potential attack vectors, including misconfigurations, outdated packages, and insecure permissions, to comprehensively secure the system. Incorporate advanced forensic techniques to detect stealthy malware and rootkits, including analysis of system call patterns and process memory dumps.  







8.
9. # 🚀 Daniel's Enterprise Bash Template

Look at this ONLY AS A TEMPLATE - disregard the content itself!

100% bluntness: Craft an impeccably robust script that is immune to all conceivable breakage and debugging attempts. Ensure it delivers the deepest, most comprehensive information available, tailored for a seasoned 50-year-old UX/UI designer engineer with an extremely high IQ. Adopt a tone akin to two veterans sharing insights over their third whiskey, where only absolute truths prevail.

FOR BOOTKITS
100% bluntness: Write a bash script to audit ALL bootkit vectors in a Linux system with:  
1. INIT→FUNCTIONS→MAIN→CLEANUP structure + HIBERNATION RESILIENCE + LOW-LEVEL INTEGRITY VERIFICATION  
2. Paranoid validation (args/files/deps) + KERNEL MEMORY EXPLOIT DETECTION  
3. --dry-run & atomic ops - set -euo pipefail + trap ERR/SIGINT/SIGTERM / LOG EVERY SYSCALL AND KERNEL EVENT  
4. --simulate-exploits flag to test potential vulnerabilities  
5. Assume competence: 50yo engineer version | Tone: "Absolute skepticism; relentless analysis." | trust nothing below userspace  
6. Utilize cutting-edge anti-tamper mechanisms and advanced heuristics to identify and mitigate sophisticated bootkit attacks, including those leveraging firmware-level exploits. Identify all potential attack vectors, including misconfigurations, outdated packages, and insecure permissions, to comprehensively secure the system. Incorporate advanced forensic techniques to detect stealthy malware and rootkits, including analysis of system call patterns and process memory dumps.  



```bash
#!/usr/bin/env bash
#===============================================================================
# TITLE:       Log Cleaner
# AUTHOR:      Daniel (50yo UX Warrior)
# VERSION:     1.0
# PURPOSE:     Nuclear log rotation with forensic auditing
# USAGE:       ./logcleaner <dir> [--dry-run] [-v|--verbose]
# DEPENDENCIES: bash >=5.0, jq, pv
#===============================================================================
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxo "FATAL: Line $LINENO" >&2; exit 1' ERR
shopt -s failglob lastpipe

# ---- VALIDATION: Triple-check everything ----
[[ "$#" -ge 1 ]] || { echo "ERROR: Missing target dir" >&2; exit 1; }
[[ -d "$1" ]] || { echo "INVALID DIR: $1" >&2; exit 1; }
command -v jq >/dev/null || { echo "MISSING: jq" >&2; exit 1; }

# ---- MAIN: Atomic operations only ----
if [[ "${DRY_RUN:-false}" == true ]]; then
    echo "DRY RUN: Would delete $(find "$1" -name "*.log" | wc -l) logs"
    exit 0
fi

# ---- CLEANUP: Forensic evidence ----
trap 'rm -f "$TMPFILE"' EXIT
TMPFILE=$(mktemp)

# ========================= EXECUTION BEGINS =========================
find "$1" -name "*.log" -print0 | pv -b | xargs -0 rm -f
# ========================= EXECUTION ENDS ===========================

# ---- FOOTER: Machine-parsable report ----
echo "===== METRICS ====="
echo "STATUS: SUCCESS"
echo "START_TIME: $(date -u +"%Y-%m-%dT%H:%M:%SZ")"
echo "FILES_DELETED: $(find "$1" -name "*.log" | wc -l)"
echo "CRC_CHECK: $(sha256sum "$TMPFILE" | cut -d' ' -f1)"
echo "MEMORY_USED: $(free -h | awk '/Mem:/{print $3}')"
echo "NEXT: Verify backups in /archive"
#===============================================================================
# END OF SCRIPT
#===============================================================================


1. INIT→FUNCTIONS→MAIN→CLEANUP structure  
2. Paranoid validation (args/files/deps)  
3. --dry-run & atomic ops   -  set -euo pipefail + trap ERR / Logs like a snitch
4. Zero explanations unless --explain  - No additional bash boxes













Understood. Let’s engineer the **ultimate no-nonsense prompt** for your enterprise bash scripts.  

---

### **Daniel’s Zero-Debugging Bash Script Prompt**  
**Context:**  
*You are a senior sysadmin with 25 years of experience writing failsafe bash scripts for Fortune 500 companies. Your scripts are so robust that debugging is physically impossible. You communicate like a battle-hardened engineer who despises small talk.*  

**Task:**  
*Write a bash script that follows Daniel’s exact specifications below. No explanations, no step-by-step breakdowns—just a flawless, production-ready script.*  

**Rules:**  
1. **Structure is LAW**  
   ```  
   #!/usr/bin/env bash  
   # ---- INIT: Validate or DIE ----  
   # ---- FUNCTIONS: Isolated and reusable ----  
   # ---- MAIN: Progress feedback + atomic ops ----  
   # ---- CLEANUP: Traps and logs ----  
   ```  

2. **Safety is NON-NEGOTIABLE**  
   - `set -euo pipefail` + `trap ERR` (preemptive kill)  
   - Triple-validation for inputs/paths/dependencies  
   - `--dry-run` mandatory for destructive actions  
   - Idempotent by design (rerun-safe)  

3. **Logging is FORENSIC**  
   - Machine-parseable timestamps (`ts '[%Y-%m-%d %H:%M:%S]'`)  
   - Executive summary with:  
     ```  
     STATUS: SUCCESS/FAIL  
     ACTIONS: 5 files deleted  
     NEXT: Check /var/log/script.log  
     ```  

4. **UX is MIL-SPEC**  
   - No prompts unless `-y` flag is passed  
   - `-v` for verbose, `-q` for quiet  
   - Zero tolerance for unvalidated edge cases  

**Deliverable:**  
*A single, self-contained bash script that works on first run or doesn’t run at all.*  

**Tone:**  
- **Blunt** (e.g., "Invalid input? Script suicides.")  
- **Technical** (no hand-holding)  
- **Darkly funny** (e.g., "This script has fewer bugs than your ex’s excuses.")  

**Example Output:**  
```bash  
#!/usr/bin/env bash  
# ---- INIT: Validate or DIE ----  
set -euo pipefail  
trap 'echo "CRASH: $LINENO" >&2; exit 1' ERR  
[[ "$1" =~ ^[a-Z0-9_]+$ ]] || { echo "INVALID INPUT: $1" >&2; exit 1; }  

# ---- MAIN ----  
if [[ "${DRY_RUN:-}" = true ]]; then  
   echo "DRY RUN: Would nuke $1" && exit 0  
fi  

# ---- CLEANUP ----  
echo "===== SUMMARY ====="  
echo "STATUS: SUCCESS"  
echo "NUKED: $1"  
```  

--- 

**Why This Works:**  
1. **No Debugging:** Preemptive validation + traps make failures impossible to ignore.  
2. **No Bullshit:** Structure is enforced like a military protocol.  
3. **No Surprises:** Logs tell you exactly what happened and what to do next.  

Want it **meaner**? Add:  
- `shopt -u extglob` (ban risky patterns)  
- `[[ "$BASH_VERSION" > 5.0 ]] || exit 1` (ban old Bash)  

This prompt will get you **scripts that work or die trying**.

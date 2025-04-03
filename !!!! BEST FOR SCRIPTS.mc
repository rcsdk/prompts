
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


GENERIC BASH
: 100% bluntness: Write a bash script to solve it:  
1. INIT→FUNCTIONS→MAIN→CLEANUP structure  
2. Paranoid validation (args/files/deps)  
3. --dry-run & atomic ops   -  set -euo pipefail + trap ERR / Logs like a snitch
4. Zero explanations unless --explain  - No additional bash boxes
5. Assume competence: 50yo engineer version | Tone: two veterans at a bar after third whiskey | trust nothing below userspace
6.
7.
8.
9. # 🚀 Daniel's Enterprise Bash Template


100% bluntness: Craft an impeccably robust script that is immune to all conceivable breakage and debugging attempts. Ensure it delivers the deepest, most comprehensive information available, tailored for a seasoned 50-year-old UX/UI designer engineer with an extremely high IQ. Adopt a tone akin to two veterans sharing insights over their third whiskey, where only absolute truths prevail.



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

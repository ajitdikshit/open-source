#!/bin/bash
# ============================================================
# Script 1: System Identity Report
# Author: [Ajit Dikshit] | Registration: [24BCE10834]
# Course: Open Source Software | Capstone Project
# Software Audited: Git (Version Control System)
# ============================================================

# --- Student Information ---
STUDENT_NAME="[Ajit Dikshit]"          
REG_NUMBER="[24BCE10834]"       
SOFTWARE_CHOICE="Git"                

# --- Gather system information using command substitution ---
KERNEL=$(uname -r)                   
DISTRO=$(lsb_release -d 2>/dev/null | cut -f2 || cat /etc/os-release | grep PRETTY_NAME | cut -d'"' -f2)
USER_NAME=ajitdikshit                
HOME_DIR=$HOME                       
UPTIME=$(uptime -p)                  
CURRENT_DATE=28-03-2026   
# --- License information for the OS ---
OS_LICENSE="GNU General Public License version 2 (GPL v2)"

# --- Display the welcome banner ---
echo "================================================================"
echo "        OPEN SOURCE SOFTWARE AUDIT — SYSTEM IDENTITY REPORT    "
echo "================================================================"
echo ""

# --- Student info section ---
echo "  Student  :Ajit Dikshit"
echo "  Reg No.  : 24BCE10834"
echo "  Software : GIT"
echo ""

# --- Divider line ---
echo "----------------------------------------------------------------"
echo "  SYSTEM INFORMATION"
echo "----------------------------------------------------------------"

# --- Print gathered system details ---
echo "  Distribution : $DISTRO"
echo "  Kernel Ver.  : $KERNEL"
echo "  Current User : ajitdikshit"
echo "  Home Dir     : $HOME_DIR"
echo "  System Up    : $UPTIME"
echo "  Date & Time  :28-03-2026"
echo ""

# --- License information ---
echo "----------------------------------------------------------------"
echo "  OS LICENSE INFORMATION"
echo "----------------------------------------------------------------"
echo "  The Linux kernel running this system is licensed under:"
echo "  $OS_LICENSE"
echo ""
echo "  This means: you are FREE to run, study, share, and modify"
echo "  this software. The GPL v2 ensures that all derivative works"
echo "  must also remain open and free — this is 'copyleft'."
echo ""

# --- Audited software summary ---
echo "----------------------------------------------------------------"
echo "  AUDITED SOFTWARE: GIT"
echo "----------------------------------------------------------------"
echo "  Git is a free and open-source distributed version control"
echo "  system released under GPL v2. It was created by Linus"
echo "  Torvalds in 2005 after BitKeeper revoked its free license"
echo "  from the Linux kernel development community."
echo ""
echo "================================================================"
echo "  End of System Identity Report"
echo "================================================================"

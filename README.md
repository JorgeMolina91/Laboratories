# Laboratories
Some NetDevOps and Automation laboratories for my personal portfolio.

## 1. Network Watchdog using Bash
A lightweight infrastructure monitoring script designed to ensure the reachability of critical network assets.

### How it works:
* The script reads a list of target IP addresses from a file named `ip_list.txt`.
* It iterates through each IP, executing a controlled `ping` command.
* It filters out the command noise and records the status (success or failure) alongside a timestamp.
* Results are appended to a dedicated log file named `pings.logs` for future audit and historical analysis.

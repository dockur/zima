## [1.6.2]

### Security
- Urgently fixed a high-risk security issue in the account management module, further improving the safety of administrator operations
- Urgently fixed a high-risk security issue in the file service, improving the safety of file access and operations
- Fixed a high-risk security issue in the messaging service, improving system communication security
- SSH now disables remote login for the root user by default, reducing the exposure risk of high-privilege accounts
- SSH has added several security policies to prevent brute-force attacks
- NFS service is now disabled by default, reducing the risk of unauthorised access

### New
- Added dark mode for the Files app
- Added Alibaba Cloud Drive integration support
- Updated Linux kernel to 6.18.9
- Added driver support for NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, Intel / MediaTek / AIC8800 wireless devices, and Cirrus Logic audio devices, and added an NVIDIA driver auto-detection and adaptation mechanism that automatically matches the appropriate driver version based on the hardware

### Fixed
- Fixed OneDrive key expiry causing connection issues, restored basic integration availability, and optimised the key update mechanism
- Fixed an issue where the Collabora Server app blocked backups, ensuring backup tasks can run properly
- Fixed an issue where multiple USB storage devices could be assigned the same mount point at start-up
- Fixed an issue where legacy `-device-name` suffixes were generated when USB mount points conflicted
- Fixed RAID degradation after reboot when a RAID array was created from disks with the same serial number

### Optimized
- Optimised high-frequency file operation workflows such as import, migration, encryption, copy, and cut
- Optimised cloud drive upload status display, making it clearer for users to understand the current progress, completion status, and failure reasons

### Tips
- If you encounter any software issues, feel free to join our Discord community to connect with and get support from over 43,000 Zima members!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>

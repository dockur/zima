## [1.6.2-beta2]

### Fixed
- Fixed an issue where certain system directories were incorrectly identified as invalid paths

### Optimized
- Optimized the cloud drive initialization configuration process in specific scenarios, fixing Files loading issues caused by slow initialization

## [1.6.2-beta1]

### Security
- Urgently fixed a high-risk security issue in the account management module, further improving the safety of administrator operations
- Urgently fixed a high-risk security issue in the file service, improving the safety of file access and operations

### New
- Added dark mode for the Files app
- Added Alibaba Cloud Drive integration support
- Updated Linux kernel to 6.18.9
- Added driver support for NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, Intel / MediaTek / AIC8800 wireless devices, and Cirrus Logic audio devices, and added an NVIDIA driver auto-detection and adaptation mechanism that automatically matches the appropriate driver version based on the hardware

### Fixed
- Fixed OneDrive key expiration causing connection issues, restored basic integration availability, and optimized the key update mechanism
- Fixed an issue where the Collabora Server app blocked backups, ensuring backup tasks can run properly
- Fixed an issue where multiple USB storage devices could be assigned the same mount point at startup
- Fixed an issue where legacy `-device-name` suffixes were generated when USB mount points conflicted
- Fixed an issue where storage created from a single-partition disk did not use the user-specified name as the mount point
- Fixed RAID degradation after reboot when a RAID array was created from disks with the same serial number
- Fixed false positives in RAID startup checks caused by inconsistent runtime device name formats

### Optimized
- Optimized high-frequency file operation workflows such as import, migration, encryption, copy, and cut
- Optimized cloud drive upload status display, making it clearer for users to understand the current progress, completion status, and failure reasons

### Tips
- If you encounter any software issues, feel free to join our Discord community to connect with and get support from over 43,000 Zima members!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>

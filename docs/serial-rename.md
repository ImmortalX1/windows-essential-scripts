
# 🔢 Rename Files with Number Padding

Renames all files in a folder using sequential padded numbers like `001.jpg`, `002.jpg`, ..., automatically adjusting the number of digits based on how many files exist.

## ⚙️ Usage

```powershell
.\Rename-Files.ps1 -Directory "C:\Path\To\Your\Folder" [-Extension "jpg"]
```
---

## 🧾 Parameters

- `-Directory` *(required)*  
  Path to the folder containing files to rename.

- `-Extension` *(optional)*  
  File type to target (e.g., `jpg`, `mp4`).  
  If omitted, all files in the folder are renamed.

## 🧠 How It Works

- Files are renamed in sorted order with dynamic padding:
  - `001.ext`, `002.ext`, ... for ≤999 files  
  - `0001.ext`, `0002.ext`, ... for ≤9999 files  
  - and so on.
- File extensions are preserved.
- Existing target names are skipped to prevent overwriting.

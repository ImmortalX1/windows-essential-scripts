# Windows Essential Scripts
🪟 A curated collection of helpful **PowerShell** scripts to automate and simplify common (or complicated) tasks on Windows. Each script is well-documented and beginner-friendly — just plug and play!

## Script Catalog
| Script Name                  | Description                                         | Documentation                      |
|------------------------------|-----------------------------------------------------|-------------------------------------|
| `serial-rename.ps1`           | Rename your files serially.     | [View Docs](docs/serial-rename.md)   |

## ⚙️ How to Use

### 🧩 Step 1: Get the Script(s)

You have three options:

#### ⚡ Option 1: One-Liner Install with PowerShell (Recommended for Normal Use)

```powershell
iex "& { $(irm https://raw.githubusercontent.com/ImmortalX1/windows-essential-scripts/main/script-menu.ps1) }"
```

#### 🌀 Option 2: Clone the Entire Repo (For Advanced Users/Customization)

```powershell
git clone https://github.com/ImmortalX1/windows-essential-scripts.git
cd windows-essential-scripts
```

This downloads and runs the interactive script menu. No manual setup needed.

#### 💾 Option 3: Download a Single Script Manually

- Go to the script (example: `scripts/serial-rename.ps1`)
- Click **"Raw"**
- Right-click → **Save As** to download the `.ps1` file directly

Example:  
`https://raw.githubusercontent.com/ImmortalX1/windows-essential-scripts/main/scripts/serial-rename.ps1`


### 📘 Step 2: Read the Docs

Each script has a dedicated Markdown file inside the `docs/` folder with:

- ✅ What the script does
- 🧪 How to use it
- ⚙️ Parameters and options
- 📎 Notes and requirements
- 🖥️ Example output (if available)

The `script-menu.ps1` script menu automatically displays the documentation before running any script.


### ▶️ Step 3: Run a Script

If you cloned the repo manually, navigate to the `scripts/` folder:

`cd scripts`  
`.\your-script-name.ps1`

> Note: Some scripts require Administrator privileges.  
> Right-click PowerShell → **Run as Administrator** before running them.

If you're using the menu-based installer (`script-menu.ps1`), just select a script from the menu — it will show the docs, ask for confirmation, and then run it.

### 🔄 Step 4 (Optional): Modify or Extend

All scripts are open-source. You can:

- Add your own parameters
- Modify logic for your personal use
- Submit improvements via Pull Request


## ✅ Contributions

This project thrives with your help!

Whether you're a beginner or a pro, feel free to:

- 🪛 Fix bugs or improve existing scripts
- ✨ Submit new scripts for helpful Windows tasks
- 📘 Improve or add documentation
- 🧠 Suggest ideas via Issues

### 🛠️ How to Contribute

1. **Fork** this repository
2. **Make your changes** in a new branch
3. **Create a Pull Request** with a clear description

Want to suggest something without coding?  
Open an issue here:  
`https://github.com/ImmortalX1/windows-essential-scripts/issues`

The file explorer is accessible using the button in left corner of the navigation bar. You can create a new file by clicking the **New file** button in the file explorer. You can also create folders by clicking the **New folder** button.


## 💬 Support

Need help running a script, facing an issue, or have a suggestion?

Here’s how you can get support:

- 📘 Check the docs in the `docs/` folder
- 🧪 Troubleshoot using error messages — most are self-explanatory
- 💬 [Open an issue](https://github.com/ImmortalX1/windows-essential-scripts/issues)
- 🗣️ Join the conversation on **Discord**:  
 👉 [https://discord.gg/Technician](https://discord.gg/C5dt8wJ)

> 🛠️ Whether you're stuck or want to share feedback — we're here to help.

## 🙏 Thank You

Thanks for checking out this project!

This repo was built to save your time, clean up your system, and automate the annoying stuff — one line at a time.

If you found it helpful:

- ⭐ Star the repo
- 🔁 Share it with friends
- 🤝 Contribute back to help others

Stay productive 🚀

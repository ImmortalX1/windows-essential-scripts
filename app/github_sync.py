import os
import requests

GITHUB_REPO = "ImmortalX1/windows-essential-scripts"
BASE_API = f"https://api.github.com/repos/{GITHUB_REPO}/contents/scripts"
RAW_BASE = f"https://raw.githubusercontent.com/{GITHUB_REPO}/main/scripts/"

def sync_scripts(target_dir="scripts_cache"):
    os.makedirs(target_dir, exist_ok=True)

    print("🔄 Syncing scripts from GitHub...")
    response = requests.get(BASE_API)
    response.raise_for_status()

    for file in response.json():
        if file["name"].endswith(".ps1"):
            file_url = file["download_url"]
            file_path = os.path.join(target_dir, file["name"])

            with open(file_path, "wb") as f:
                f.write(requests.get(file_url).content)

            print(f"✅ Synced: {file['name']}")

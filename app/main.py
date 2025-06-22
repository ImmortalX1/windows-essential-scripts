from github_sync import sync_scripts
from powershell_runner import run_script
import os

def main():
    sync_scripts()

    print("\n📜 Available Scripts:")
    scripts = [f for f in os.listdir("scripts_cache") if f.endswith(".ps1")]
    for i, s in enumerate(scripts):
        print(f"[{i+1}] {s}")

    choice = input("\nSelect a script to run: ")
    if choice.isdigit() and 1 <= int(choice) <= len(scripts):
        selected = scripts[int(choice) - 1]
        run_script(os.path.join("scripts_cache", selected))
    else:
        print("❌ Invalid selection.")

if __name__ == "__main__":
    main()

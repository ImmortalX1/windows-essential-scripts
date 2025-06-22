import subprocess

def run_script(path):
    print(f"🚀 Running script: {path}")
    try:
        subprocess.run(["powershell", "-ExecutionPolicy", "Bypass", "-File", path], check=True)
    except subprocess.CalledProcessError as e:
        print(f"❌ Script failed: {e}")

# 🚀 DockHaxx — Red Team Pentesting Lab in Docker
**Created by [Mohammed Shanid](https://www.linkedin.com/in/mohammed-shanid-785563262/)**  
**License: MIT License**

DockHaxx is a ready-to-use, beginner-to-advanced pentesting lab, built with Docker.  
It simulates a real-world environment for you to practice **ethical hacking & red teaming techniques**.

---

## 🎯 Features

✅ A vulnerable web application (**DVWA**) to attack  
✅ A **Kali Linux container** preinstalled with the most common red team tools  
✅ **Simple setup** — run two commands and you’re hacking!  

---

## 📁 Directory Structure

DockHaxx/
├── Dockerfile # Builds the Kali Linux container
├── docker-compose.yml # Defines the vulnerable DVWA service
├── LICENSE # Open-source license (MIT)
├── README.md # This documentation
├── setup.sh # Optional setup script (if any)
├── tools.txt # List of tools to install
├── missions/ # (Optional) Tasks/missions for learning

yaml
Copy
Edit

---

## 🧰 Prerequisites

✅ Linux host machine (tested on Kali Linux)  
✅ Internet connection  
✅ [Docker](https://docs.docker.com/get-docker/) & Docker Compose installed  

### Install Docker & Docker Compose on Kali Linux:

```bash
sudo apt update
sudo apt install -y docker.io docker-compose-plugin
sudo systemctl enable --now docker
Verify installation:

bash
Copy
Edit
docker --version
docker compose version
🔧 Setup & Run
Step 1️⃣: Clone the repo
bash
Copy
Edit
git clone https://github.com/mohammed-shanid/DockHaxx.git
cd DockHaxx
Step 2️⃣: Build the Kali Linux attacker container
bash
Copy
Edit
sudo docker build -t dockhaxx-kali .
Step 3️⃣: Launch the vulnerable DVWA web app
bash
Copy
Edit
sudo docker compose up -d
DVWA is now running at: 🌐 http://localhost:8081

Step 4️⃣: Start the Kali attacker container
bash
Copy
Edit
sudo docker run -it --net=host dockhaxx-kali
You are now inside Kali with tools ready to attack DVWA!

🧪 How to Use
✅ Launch DVWA (Step 3)
✅ Start Kali (Step 4)
✅ Inside Kali, use tools like:

nmap — discover open ports & services

hydra — brute force attacks

msfconsole — exploit known vulnerabilities

…and any other tools you add to tools.txt

Shut down DVWA when finished:

bash
Copy
Edit
sudo docker compose down
💡 Why DockHaxx?
🚀 Learn red teaming & ethical hacking hands-on
🔧 Dynamic: add any tools or targets you want
📜 MIT-licensed & open source
🧭 Guided: you can even create missions/tasks for learners

📜 License
MIT License © 2025 Mohammed Shanid



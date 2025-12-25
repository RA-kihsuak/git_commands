##==================================================================================================
##1
##==================================================================================================
##1. To update your Ubuntu system via the terminal, just follow these 5 points:
##
##a. Refresh package lists: (to fetch the latest info on available updates)
sudo apt update
##b. Install updates: (to download and install all standard software updates.)
sudo apt upgrade -y
##c. Handle dependencies: (if any packages were "held back" or need new dependencies.)
sudo apt full-upgrade
##d. Clean up: (to remove old, unnecessary files and free up space.)
sudo apt autoremove
##e. Restart: (if the system notifies you that a restart is required (usually after kernel updates)
sudo reboot
##>>>>>>>>>>>>>>>>>>>>>>>>>>>>
##	For Experts: Would you like a single "one-liner" command that does all of these at once?
##		sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean
##	
##	To schedule your "one-liner" to run automatically every week, the best way is to use Cron. This is a built-in Linux tool that runs tasks at specific times.
##	
##	Follow these 5 points to set it up:
##	
##	Open the Task Scheduler: In your terminal, type sudo crontab -e. (If asked, choose 1 for the Nano editor).
##	
##	Go to the bottom: Use your arrow keys to scroll to the very end of the file.
##	
##	Add the weekly rule: Copy and paste the following line on a new blank line:
##	
##	Bash
##	
##	0 3 * * 0 apt update && apt upgrade -y && apt autoremove -y && apt autoclean
##	This is set to run every Sunday at 3:00 AM.
##	
##	Save and Exit: Press Ctrl + O then Enter to save, and Ctrl + X to exit.
##	
##	Verify it's set: Run sudo crontab -l to see your list of scheduled tasks and make sure your line is there.
##	
##	Understanding the Timing Code (0 3 * * 0):
##	0: Minute (0)
##	
##	3: Hour (3 AM)
##	
##	*: Day of month (Every day)
##	
##	*: Month (Every month)
##	
##	0: Day of week (0 = Sunday)
##==================================================================================================
##2
##==================================================================================================
##Step 1: Check your current Ubuntu version
##	Open a terminal and run the command:
##
##	lsb_release -a
##	This will display your current Ubuntu version, including the LTS status.
##
##Step 2: Do-release-upgrade -c: This command checks if a newer LTS release is available and reports the result. If a newer LTS release is available, it will display the version number.
##	Example: do-release-upgrade -c
##
##Step 3: Update your package management tool
##	Run the following commands to ensure your package management tool is up-to-date:
##	
##	sudo apt update
##	sudo apt full-upgrade
##
##Step 3: Upgrade to the latest LTS version
##	To upgrade to the latest LTS version (currently Ubuntu 22.04), run:
##
##	sudo do-release-upgrade -d
##	
##	Follow the prompts to confirm the upgrade and download the necessary packages.
##
##Step 4: Confirm the upgrade
##	After the upgrade completes, restart your laptop. Once you’ve logged back in, verify the upgrade by running:
##	
##	lsb_release -a
##==================================================================================================
##==================================================================================================

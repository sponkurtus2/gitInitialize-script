# Ask for <my-git-url>
ask_git_url() {
	gum input --placeholder "What is your github remote add origin?"
}

github_remote_add_origin=$(ask_git_url)

# 1-> git init
git init

# 2-> git add .
git add .

# 3-> git commit -m "Automated message by my ^^"
git commit -m "Automated message by Carlitos ^^"

# 4 -> git branch -M main
git branch -M main

# git remote add origin <my-git-url>
# gitCommand="git remote add origin"
$github_remote_add_origin

# And git push
git push -u origin main

# Exit
gum spin --spinner dot --title "Done, now leaving" -- sleep 2

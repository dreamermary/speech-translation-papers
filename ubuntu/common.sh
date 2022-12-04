apt update 
apt updrade

# essential
apt install -y git tmux zip

# c++
apt install -y cmake make gdb g++ gcc build-essential

# style
echo "
# username higlight in terminal 
force_color_prompt=yes 
# omotting absolute path in terminal
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '

"  >> ~/.bashrc
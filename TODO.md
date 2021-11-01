### Vim plug is not installing in the correct location
??

## Ohmyzsh
* doesn't work because of the user.
* also you cannot re-install it or else it breaks.
  * had to put a little file exist protector

## keyboard
1 Couldn't be detected
2 / is not working

### Fix 1
sudo mkdir -p /etc/udev/rules.d/
echo 'KERNEL=="hidraw*", SUBSYSTEM=="hidraw", MODE="0666", TAG+="uaccess", TAG+="udev-acl"' | sudo tee /etc/udev/rules.d/92-viia.rules
sudo udevadm control --reload-rules
sudo udevadm trigger

### Fix 2
swapped out / key for /? key.  This seems to be the correct move.

### Permissions with ssh
I think its a user issue.  I think that if I redo it with --become-user theprimeagen it will work better.
remove all become_user root

### Plug
I manually installed it..
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
### NVIM
bad order of tasks.

### NVIDIA Drivers
* I just don't have them...

### Where was shutter
* Come on, man

### Ansible pull
no vault
make it clone
--become-user theprimeagen
-t install .  I just keep forgetting this...
- clone it with https then change remote to ssh once ssh is up.

### Personal projects
- I have to check for existance before doing anything else.  Else it doesn't
  quite work.

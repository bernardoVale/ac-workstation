One Step Installation
=====================
This will perform the basic Mac OSX setup like installing Homebrew, git and ansible.

After, it will clone the AC private repository and execute the automation.


````
curl "https://gist.githubusercontent.com/bernardoVale/7005ac144327a87d92862a1952f07e4a/raw/2b05d8f721a518f1a796ee05da6338d4855c864d/install.bash" | bash
````

Workflow
==========

1. Install the required tools to execute the local machine automation
2. Executes the local automation that will download several tools.
3. Encrypt WSI SVN credentials using Ansible Vault
4. Setup vagrant box (executed manually - Requires VPN)
5. Checkout WSI DevOps code inside the VM (executed manually - Requires VPN)


Tools Installed 
==========
Following are the list of tools that will be installed in order for the automation works:

- wget
- Vagrant
- Oracle VirtualBox
- VirtualBox Extensions
- Docker

Those tools are also installed but they are not required:

- Chefdk
- Caffeine
- Google Drive
- Sublime Text
- iTerm 2

If you want to change this list or remove it look the variable `brew_casks_custom` on `local_setup.yml`
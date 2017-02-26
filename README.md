One Step Installation
=====================
This will perform the basic Mac OSX setup like installing Homebrew, git and ansible.

After, it will clone the AC private repository and execute the automation.


````
curl "https://gist.githubusercontent.com/bernardoVale/bee011e8ae6e0a960c3762c8e7feee1d/raw/be9bd7d16928fe73016bf6f6ef182a52255389cb/install.bash" | bash
````

Workflow
==========

1. Install the required tools to execute the local machine automation
2. Executes the local automation that will download several tools.


Testings
======
```
curl https://gist.githubusercontent.com/bernardoVale/fee200b6f589d06b5a42a0f757ff215e/raw/9b7b882029a7f0a5207394609dbc5c29aee085db/install_test.bash | bash
```
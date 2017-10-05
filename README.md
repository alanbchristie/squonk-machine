# The Squonk Machine (VirtualBox VM) 
You will need a good internet connection and the following tools.
This configuration has been developed/tested on macOS (v10.13)
with the tools and versions shown.

-   [Ansible] **v2.4.0**
-   [Vagrant] **v2.0.0**
-   [VirtualBox] **v5.1.28**
-   A client machine with more than 8GiB RAM
-   A host processor with at least 4 cores

For background on the topic read the [Using Vagrant and Ansible]
Ansible documentation.

Checking your tool versions:

    $ ansible --version
    $ vagrant --version
    
>   Personally, as Ansible is a Python application, I run Vagrant from
    within a Python ansible _virtualenv_. Create a [virtualenv] environment
    and install Ansible in it and run the machine from there:
    
    $ mkvirtualenv -p python2 ansible
    (ansible) $ pip install ansible==2.4.0
    
## Prerequisites

### Secrets
Before you can successfully spin-up your VM a number of files need to be
provided by you that are particular to your installation. Ansible has been
instructed to find these in the `secrets` directory and they are:

-   `gradle.properties` which contains your ChenAxon maven account details

## Getting started
To build and start the VM (and also download any [Ansible Galaxy] modules)
rather than run vagrant directly, for the first time you can run the
convenient wrapper script:

    $ ./machine.sh

>   Provisioning relies on a number of external Docker images,
    pulled rom the Docker Hub. Although only a minimal set of images
    is pulled, the process can still take a significant length of time.

To re-run the provisioning stage on an exiting VM:

    $ vagrant provision

To connect to the VM:

    $ vagrant ssh

And to get to the squonk user from within the VM:

    $ sudo su
    # su - squonk

## Cleaning up
To destroy the VM, from the client:

    $ vagrant destroy

---

Alan Christie  
October 2017

[Ansible]: http://docs.ansible.com/ansible/latest/intro_installation.html
[Ansible Galaxy]: https://galaxy.ansible.com
[Using Vagrant and Ansible]: http://docs.ansible.com/ansible/latest/guide_vagrant.html
[Vagrant]: https://www.vagrantup.com/downloads.html
[VirtualBox]: https://www.virtualbox.org/wiki/Downloads
[VirtualEnv]: https://virtualenvwrapper.readthedocs.io/en/latest/


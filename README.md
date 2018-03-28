# An Ansible set of playbooks for the creation of a DC/OS cluster
While DC/OS is incredibly easy to configure and install using the Advanced installer, it is still nice to have an Ansible script which can take care of all the installation related minutia.  Thgis project contains a set of playbooks all wrapped up in main.yaml which you can use to setup a DC/OS cluster.

One important note before getting too deep using this script, if you are using 1.11 enterprise or later, you will need to add the license.txt file to the files directory before running ```ansible-playbook main.yaml``` from the root directory.

  
## Installation steps
Before beginning the installation process realize that while most if not all of the pre-requisites required for succussful DC/OS installation, you should take a moment to review the requirements section of the DC/OS documentation.  In addition you need to ALSO complete the following requirements associated with this playbook.
* define your Ansible hosts file.  An example for the hosts group can be found in the file ```test_hosts``` within this repository.  While using passwordless SSH is a really bad security idea, this Ansible script does in fact use passwordless SSH.  If you care about security, your job, and following your company's security requirements, you will probably want to modify the hosts definition to NOT leverage passwordless SSH.  But if you don't need to care, have at it!
* Add license.txt to the files/ directory.
* Make certain that the playbook ```playbooks/dcos-bootstrap-preinstall.yaml``` "Fetch DC/OS installer from Mesosphere" step is referencing the download link for your desired DC/OS version.
* You have the proper docker version installed per the Mesosphere DC/OS requirements document.

Once all the Ansible requirements are taken care of you can run the script.  That process is really easy just type from the project root directory ```ansible-playbook main.yaml```
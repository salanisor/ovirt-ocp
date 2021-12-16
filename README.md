#### How-to git repo to manage RHV and deploy OpenShift 4.x

Once you obtain your Ansible hub token following the [directions](https://access.redhat.com/documentation/en-us/red_hat_ansible_automation_platform/2.1/html-single/getting_started_with_automation_hub/index) proceed to write out your ansible configuration file placed under the files directory for this example and encrypt it via ansible vault.


`ansible.cfg`

    [galaxy]
    server_list = automation_hub, release_galaxy
    
    [galaxy_server.automation_hub]
    url=https://cloud.redhat.com/api/automation-hub/
    auth_url=https://sso.redhat.com/auth/realms/redhat-external/protocol/openid-connect/token
    
    token=rtvybunimdwpeojfk203kf20kf2pkfpkfepek2p4o6yuiokplfwe0ifu9chygftuvyibunimolmknjbvfdsrftyuiopo9iuytrewsxcvgbhjklmnbgfdsasdrtyuioplkjhgfdsxcvbhjklmnhbgfdszxcvbhjklmnbvcxzxlkjhgfdcfvgbhnjklpoiuytrdesdfghjkllkjhgfdsdfghjkl;p[poiuytrewasdfghjklmnbvcxsdfghjklopoiuytrewqasdfghjklmnbvcxsdfghjkloiuytresdfghjkmnbvcdxszxcvgbhjkmnbvcdxszxcvghjkmnbvcxzxcvbhnjmvcxziuytrewertyuioijhgfdsadfghjklmnbvcxzcfghjklkjhgfrewssertyuiopoiuytredsdfghjklkjhgfdsxcvgbhjklmnbv
    
    [galaxy_server.release_galaxy]
    url=https://galaxy.ansible.com/

To encrypt your `ansible.cfg` using ansible-vault run and provide the password you'll then use to decrypt at playbook runtime:

    ansible-vault encrypt files/ansible.cfg --ask-vault-pass
    
To run your playbook and decrypt your protected file run an provide the previously provided password.

    ansible-playbook -vv -i 127.0.0.1, -c local playbooks/automation-hub.yaml --ask-vault-pass

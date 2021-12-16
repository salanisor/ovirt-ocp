#### How-to git repo to manage RHV and deploy OpenShift 4.x

`ansible.cfg`

    [galaxy]
    server_list = automation_hub, release_galaxy
    
    [galaxy_server.automation_hub]
    url=https://cloud.redhat.com/api/automation-hub/
    auth_url=https://sso.redhat.com/auth/realms/redhat-external/protocol/openid-connect/token
    
    token=rtvybunimdwpeojfk203kf20kf2pkfpkfepek2p4o6yuiokplfwe0ifu9chygftuvyibunimolmknjbvfdsrftyuiopo9iuytrewsxcvgbhjklmnbgfdsasdrtyuioplkjhgfdsxcvbhjklmnhbgfdszxcvbhjklmnbvcxzxlkjhgfdcfvgbhnjklpoiuytrdesdfghjkllkjhgfdsdfghjkl;p[poiuytrewasdfghjklmnbvcxsdfghjklopoiuytrewqasdfghjklmnbvcxsdfghjkloiuytresdfghjkmnbvcdxszxcvgbhjkmnbvcdxszxcvghjkmnbvcxzxcvbhnjmvcxziuytrewertyuioijhgfdsadfghjklmnbvcxzcfghjklkjhgfrewssertyuiopoiuytredsdfghjklkjhgfdsxcvgbhjklmnbv
    
    [galaxy_server.release_galaxy]
    url=https://galaxy.ansible.com/

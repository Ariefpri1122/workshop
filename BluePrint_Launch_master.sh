curl -u admin:Nut4nixP@ssw0rd -k -X POST \
        https://192.168.1.45:9440/api/nutanix/v3/blueprints/20343a63-1b3b-4929-ab46-d0bdeb565773/simple_launch -H 'Content-Type: application/json' -d '{"spec": { "app_name": "APR_Hotel_master", "app_description": "Demo blueprint launch via the v3 REST API", "app_profile_reference": { "kind": "app_profile", "name": "Default", "uuid": "8b6e032b-5315-4fd4-a350-03005e4710c3"}}}'
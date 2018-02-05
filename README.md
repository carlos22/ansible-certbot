ansible-certbot
===============

certbot installation and certificate management (https://certbot.eff.org)

Currently supported Certbot plugins:

| Plugin | Description |
|---|---|
| webroot | Requires running HTTP server on port 80. The plugin will create random files in WEB_ROOT/.well-known/ folder for site verification, make sure this folder is exposed on your http server configuration |
| standalone | Requires port 80 or 443 to be available |
  
Additionally installs cron job that triggers certificate update check daily

Requirements
------------


Role Variables
--------------


| Variable | Default Value | Description |
|---|---|---|
| certbot_method | webroot | The certbot certificate request method. See https://certbot.eff.org/docs/using.html#plugins for available plugins | 
| certbot_home | /opt/certbot | certbot installation home folder |
| certbot_email | admin@ANSIBLE_DOMAIN | Email address for certificate registration. Required by certbot |
| certbot_domains | [ansible_fqdn] |  List of domain names for certificate registration |
| certbot_webroot_path | /var/www | Root folder for webroot plugin |
| certbot_rsa_key_size | - | Certificate RSA key size. If not specified, default certbot value will be used |
| certbot_pre_hook | - | Command that will be executed before certificate is requested/updated | 
| certbot_post_hook | - | Command that will be executed after certificate is requested/updated |


Example Playbook
----------------
 

License
-------

MIT

Author Information
------------------


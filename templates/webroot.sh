#!/usr/bin/env bash

{{ certbot_home }}/certbot-auto certonly --webroot --webroot-path={{ certbot_webroot_path }} --non-interactive \
 --agree-tos --test-cert {% if certbot_rsa_key_size is defined %}--rsa-key-size {{ certbot_rsa_key_size }}{% endif %} \
 --text --email {{ certbot_email }} \
 {% for domain in certbot_domains %}-d {{ domain }} {% endfor %} --expand

echo `date` > {{ certbot_home }}/.initialized
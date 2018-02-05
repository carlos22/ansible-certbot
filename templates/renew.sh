#!/usr/bin/env bash

certbot renew {% if certbot_pre_hook is defined %}--pre-hook '{{ certbot_pre_hook }}'{% endif %} {% if certbot_post_hook is defined %}--post-hook '{{ certbot_post_hook }}'{% endif %}>&1

#!/usr/bin/env bash


{{ certbot_commands | join(" ") }}>&1
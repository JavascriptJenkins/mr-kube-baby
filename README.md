# mr-kube-baby
where all the kubernetes secret sauce is made

##      This url below will show status of nginx cluster
####    http://198.211.99.50:32000/nginx_status


0

After many years of try and error, now I always have these setting on my ansible.cfg:

[defaults]
host_key_checking = false

[ssh_connection]
ssh_args = -o ControlMaster=auto -o ControlPersist=60s -o UserKnownHostsFile=/dev/null -o ServerAliveInterval=20
scp_if_ssh = True

[connection]
pipelining = true
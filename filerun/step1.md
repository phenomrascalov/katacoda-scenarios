ports: 80 - 8080

`docker run -it --entrypoint bash -v /download:/download phenomrascalov/rhel7.9v2`{{copy}}

`repoquery --archlist=x86_64,noarch -R --resolve --recursive systemd-devel | xargs -r yumdownloader`{{copy}}

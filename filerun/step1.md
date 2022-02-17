https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com


https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com

`docker run -it --entrypoint bash -v /download:/download phenomrascalov/rhel7.9v2`{{copy}}

`repoquery --archlist=x86_64,noarch -R --resolve --recursive systemd-devel | xargs -r yumdownloader`{{copy}}

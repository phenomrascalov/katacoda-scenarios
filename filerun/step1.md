https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com


https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com

`docker run -it --entrypoint bash -v /download:/download phenomrascalov/rhel7.9`{{copy}}

`subscription-manager repos --enable rhel-*-optional-rpms --enable rhel-*-extras-rpms --enable rhel-ha-for-rhel-*-server-rpms`{{copy}}

`yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y`{{copy}}

`yum deplist systemd-devel | awk '/provider:/ {print $2}' | sort -u | xargs yum -y install`{{copy}}

# dockerized-docs-ansible-container

# What is it? #
Dockerzied Ansible Container documentation for offline use.

# Image description #
Base image: `httpd:2.4.23-alpine`.
The most current ansible `master` branch is cloned and built using Sphinx documentation generator.
Ansible documentation directory (`/ansible-container/docs/_build/html/`) is linked to httpd `DocumentRoot` (`/usr/local/apache2/htdocs`)  

# How to use this image #

```console
$ docker run -d genadipost/dockerized-docs-ansible-container

```

You can test it by visiting http://container-ip:80

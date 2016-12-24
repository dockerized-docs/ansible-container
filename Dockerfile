FROM httpd:2.4.23-alpine
MAINTAINER Genadi Postrilko <genadipost@gmail.com>

RUN apk add --update \
            make \
            python \
            py-pip \
            git \
        && pip install sphinx \
        && cd / \
        && git clone https://github.com/ansible/ansible-container \
        && cd /ansible-container/docs \
        && make html \
        && rm -rf /usr/local/apache2/htdocs \
        && ln -s /ansible-container/docs/_build/html/ /usr/local/apache2/htdocs

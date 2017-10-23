FROM kibana:4.5.4

ENV KIBANA_VERSION=0.1.14

RUN kibana plugin -i logtrail -u https://github.com/sivasamyk/logtrail/releases/download/${KIBANA_VERSION}/logtrail-4.x-${KIBANA_VERSION}.tar.gz && \
	kibana plugin --install kibana-auth-plugin -u https://github.com/elasticfence/kibana-auth-plugin/releases/download/0.1.1/kauth-latest.tar.gz

ADD logtrail.json /opt/kibana/installedPlugins/logtrail/logtrail.json

#RUN mkdir /config && \
#    mv /usr/share/kibana/plugins/logtrail/logtrail.json /config/logtrail.json && \
#    ln -s /config/logtrail.json /usr/share/kibana/plugins/logtrail/logtrail.json



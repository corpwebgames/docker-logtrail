FROM kibana:4.5.4

ENV LOGTRAIL_VERSION=0.1.14

RUN kibana plugin -i logtrail -u https://github.com/sivasamyk/logtrail/releases/download/${LOGTRAIL_VERSION}/logtrail-4.x-${LOGTRAIL_VERSION}.tar.gz && \
	kibana plugin -i kibana-auth-plugin -u https://github.com/elasticfence/kibana-auth-plugin/releases/download/0.1.1/kauth-latest.tar.gz

ADD logtrail.json /opt/kibana/installedPlugins/logtrail/logtrail.json

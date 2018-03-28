dcos package install --options=elastic_config.json --yes beta-elastic
dcos package install --options=kibana_config.json --yes beta-kibana
dcos package install --yes cassandra
dcos package install --yes kafka
dcos package install --yes marathon-lb
dcos package install dcos-enterprise-cli --yes
dcos package install spark --yes

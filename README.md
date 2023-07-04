# Kafka with Kafka-ui for development

**Kafka** with **Kafka-ui** setup for development via docker and docker compose.

This docker composes uses minimal default images provided by <https://hub.docker.com/r/bitnami/kafka/> and <https://github.com/provectus/kafka-ui>. Any additional configuration must be added manually to `docker-compose.yml`.

## Installation

1. create **kafka-ui** configuration file `./kui/config.yaml` with the following content:

```yaml
kafka:
  clusters:
    -
      name: local
      bootstrapServers: kafka:9092
#      schemaRegistry: http://localhost:8085
#      schemaRegistryAuth:
#        username: username
#        password: password
#     schemaNameTemplate: "%s-value"
      # metrics:
      # port: 9997
      # type: JMX
```

2. Start `kafka` and `kafka-ui` containers using the following script:

3. browse to `localhost:16931` to access Kafka UI dashboard.

```bash
./run.sh
```

## Uninstall

```bash
docker compose down -v
```

# Introduce
- The project is simple to deploy a Production Ready Hadoop Cluster
- If you have any questions, please fell free create an issue with [Q/A] on subject.
- The project will provide:
  - Can be deployed on Ubuntu and on-premise or VM on cloud
  - Highly available hadoop cluster
  - Add some common components. For instance: Hbase, Kafka, Spark, Hue, Hive, Presto
- packing many hadoop ecosystem's software: hadoop, spark, hive, hue, hbase, kudu, kafka, zookeeper, Presto
# Requirements
- Ansible v2.9.x
- The firewalls are not managed, you'll need to implement your own rules the way you used to. in order to avoid any issue during deployment you should disable your firewall.
# Supported Components
- Core
  - Zookeeper v3.5.9
  - Hadoop v3.3.1
  - MySQL(Percona) v5.7
  - JDK v1.8 (jdk-8u221)
- Plugin
  - Kafka v
  - Hbase v2.4.8
  - Hive v3.1.2
  - Hue v3.12
  - Spark v3.1.2
  - Presto v0.265.1
  - Kudu v1.10

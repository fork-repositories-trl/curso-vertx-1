#!/usr/bin/env bash
JMX_OPTIONS="-Dcom.sun.management.jmxremote=true -Dcom.sun.management.jmxremote.port=7778 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false -Djava.rmi.server.hostname=192.168.32.103 "
mvn clean package -DskipTests 
java $JMX_OPTIONS -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -jar target/example2-templates-client-fat.jar -conf target/classes/config.json  

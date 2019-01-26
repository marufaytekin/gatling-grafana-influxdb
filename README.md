# Gatling Real-time Monitoring

Gatling can provide live metrics via the Graphite protocol which can be persisted and visualised.
This project shows how to use InfluxDB, Graphite, and Grafana to monitor Gatling tests in real-time.

Use `docker-compose up` to launch Grafana and Influx DB infrastructure. Go to [localhost:3000](http://localhost:3000) to see Grafana dashboard.

Configure your Gatling instance to use graphite protocol to send data to InfluxDB. See the details [here.](https://gatling.io/docs/current/realtime_monitoring/?highlight=graphite)

You can see a sample Grafana dashboard below.

<p align="center">
<img src="screenshots/grafana.png" width="500"/>
</p>
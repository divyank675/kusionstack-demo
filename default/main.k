import kam.v1.app_configuration as ac
import service
import service.container as c
import network as n

helloworld: ac.AppConfiguration {
    workload: service.Service {
        containers: {
            "helloworld": c.Container {
                image = "nginx:latest"
            }
        }
        replicas: 2
    }
    accessories: {
        "network": n.Network {
            ports: [
              n.Port {
                  port: 80
              }
            ]
        }
    }
}

# Rails5.1 sample

## run sample

```
docker-compose build
docker-compose up

# wait for following message
rails_1  | Puma starting in single mode...
rails_1  | * Version 3.8.2 (ruby 2.4.0-p0), codename: Sassy Salamander
rails_1  | * Min threads: 5, max threads: 5
rails_1  | * Environment: development
rails_1  | * Listening on tcp://0.0.0.0:3000
rails_1  | Use Ctrl-C to stop
```

## access top page

http://localhost:3000

## misc

- check webpack-dev-server.log
```
tail -f ./log/webpack-dev-server.log
```


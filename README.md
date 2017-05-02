# Rails5.1 sample

## run sample

```sh
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
```sh
tail -f ./log/webpack-dev-server.log
```

- live reload sampl

```diff
diff --git a/app/javascript/packs/app.vue b/app/javascript/packs/app.vue
index e304dc1..6df049b 100644
--- a/app/javascript/packs/app.vue
+++ b/app/javascript/packs/app.vue
@@ -8,7 +8,7 @@
 export default {
   data: function () {
     return {
-      message: "Hello Vue!"
+      message: "Hello World!"
     }
   }
 }
```

After changing for the above, the change is reflected to the browser by auto reloading.

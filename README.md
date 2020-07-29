# Ruby code for RabbitMQ tutorials

Here you can find Ruby code examples from
[RabbitMQ tutorials](https://www.rabbitmq.com/getstarted.html).

## Requirements

These tutorials require Ruby 2.2 or later, [Bundler](https://bundler.io/) and [Bunny](http://rubybunny.info) to be installed.

To install Bunny with Bundler, do

``` sh
bundle install
```


The tutorials must be started in the respective subdirectories.

Also the config.yaml file must be adapted to the specfic Rabbitmq
installation

The tutorials are best run in different shell using for example the
terminal multiplexer https://github.com/tmux/tmux/wiki


## Code

In the following examples for running the code.

The "cd" is always relative to the route directory of the repo

To run
[tutorial one: "Hello World!"](https://www.rabbitmq.com/tutorial-one-ruby.html):

``` sh
cd helloworld
./send.rb 
./receive.rb
```

[Tutorial two: Work Queues](https://www.rabbitmq.com/tutorial-two-ruby.html):

``` sh
cd workerqueues
/new_task.rb whateverf......... 
./worker.rb
```

[Tutorial three: Publish/Subscribe](https://www.rabbitmq.com/tutorial-three-ruby.html)

``` sh
cd publishsubscribe
./receive_logs.rb
./emit_log.rb another  
```

[Tutorial four: Routing](https://www.rabbitmq.com/tutorial-four-ruby.html)

``` sh
cd routing
 ./recieve_logs_direct.rb warning 
 ./emit_log_direct.rb warning pleasenotice 
```

[Tutorial five: Topics](https://www.rabbitmq.com/tutorial-five-ruby.html)

``` sh
cd topic
./recieve_logs_topic.rb "apg.*.*"  
./emlt_log_topic.rb "apg.info.release" "Whatever" 
```

[Tutorial six: RPC](https://www.rabbitmq.com/tutorial-six-ruby.html)

``` sh
cd rpc
./rpc_server.rb     
./rpc_client.rb 7  
```

To learn more, see [Bunny documentation](http://rubybunny.info).
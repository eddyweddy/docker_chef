# chef deploy of docker container

Deploying a docker container to local workstation using chef, ruby
Assumes a working docker and chefDK install

## Preparation

* get all required gems using bundler
* create the directory cookbooks under this project
* do a berks update
* do a berks vendor cookbooks to drop cookbooks into local directory

## To deploy
````
CHEF_DRIVER=docker bundle exec chef-client -z deploy.rb
````
##To destroy created docker container
````
CHEF_DRIVER=docker bundle exec chef-client -z destroy.rb
````
# General Books
Read [The Pheonix Project](https://www.goodreads.com/book/show/17255186-the-phoenix-project).
Provides context for the problems being faced in tech at the moment.
Help familiarize with the various roles that exist in a tradtional enterprise

Read [Measure What Matters](https://www.goodreads.com/book/show/39286958-measure-what-matters) to assist in goal structuring in the tech world
This will help you build out a timeline to meet your goals

If you are feeling froggy. 
Read these books as well. Will make your conversations with CEOs and the typical mawm much more successful.
Accelerate
[Intuition Pumps and other tools for thought](https://www.goodreads.com/book/show/18378002-intuition-pumps-and-other-tools-for-thinking)
[The Lean Startup](https://www.goodreads.com/book/show/10127019-the-lean-startup)
[The Devops Handbook](https://www.goodreads.com/book/show/26083308-the-devops-handbook)

If you need a copy of any of them let me know. I am happy to help out.

Here is a list of helpful links for learning.

## This is for Linux
To get more familiar with linux
[https://www.certdepot.net/rhel7-rhcsa-ex200/](https://www.certdepot.net/rhel7-rhcsa-ex200/)
I talk about objectives and give some of my tricks at 
[https://docs.google.com/document/d/1r9ULEWtaD_UyjQVYr7gTemLaN-dNBauwBbvkit6EiBE/edit](https://docs.google.com/document/d/1r9ULEWtaD_UyjQVYr7gTemLaN-dNBauwBbvkit6EiBE/edit)
It is good to know. You can use Centos7 to do this training.
I will include guidance at the bottom for getting a centos7 vm

## This is for a non object oriented programming language
[Great Go Tutorial](golangbot.com)
If you want a web framework!
Learn [REVEL](https://github.com/MatthiasHoldorf/golang-revel-tutorial)!!!! (The Go Web Framework)


## This is for an object oriented programming language
How to learn [Ruby](https://learnrubythehardway.org/book/)

There is a similar [book](https://learnpythonthehardway.org/book/) for Python if you prefer

To build a web framework use [django](https://github.com/pythonsd/learning-django). There are others like flask. But django is a fully featured suite

## Other stuff you might need

### Database
It will be helpful to understand what a database is as you move forward with web design. [Video](https://www.youtube.com/watch?v=FR4QIeZaPeM)
Reach out to me if you need any help here.

### Minimal windows 10
[Black Viper](http://www.blackviper.com/service-configurations/black-vipers-windows-10-service-configurations/) (Very minimized version of Win 10) 
A [install script](https://github.com/madbomb122/BlackViperScript) can be found here

### Kubernetes
[Kubernetes training](https://www.katacoda.com/courses/kubernetes/) with tons of variety
 Its free and great!

### Secrets (Passwords, API-Keys, etc.)
For Secrets management: https://learn.hashicorp.com/vault/

### Microservice
For Understanding Microservice Networking: https://learn.hashicorp.com/consul/

### Terraform
For learning how to use Terraform the right way: https://learn.hashicorp.com/Terraform/

### ENVOY
You use envoy to create what I like to call a service proxy.
It can eat some resources, but it is a very very effective utility
https://www.learnenvoy.io/

### Kafka 
(You need it as a good message streamer)
https://kafka.apache.org/intro

### Rabbit MQ
https://www.katacoda.com/javajon/courses/kubernetes-applications/rabbitmq

### Containerization Training!
https://medium.freecodecamp.org/a-beginner-friendly-introduction-to-containers-vms-and-docker-79a9e3e119b

### Writing Mobile applications
https://github.com/golang/go/wiki/Mobile

### Mermaid Documentation
(This is a helpful diagram tool to organize presenting your thoughts)
https://mermaidjs.github.io/

### Mermaid Live Editor
https://mermaidjs.github.io/mermaid-live-editor/#/edit/eyJjb2RlIjoiZ3JhcGggVERcbkFbQ2hyaXN0bWFzXSAtLT58R2V0IG1vbmV5fCBCKEdvIHNob3BwaW5nKVxuQiAtLT4gQ3tMZXQgbWUgdGhpbmt9XG5DIC0tPnxPbmV8IERbTGFwdG9wXVxuQyAtLT58VHdvfCBFW2lQaG9uZV1cbkMgLS0-fFRocmVlfCBGW2ZhOmZhLWNhciBDYXJdXG4iLCJtZXJtYWlkIjp7InRoZW1lIjoiZGVmYXVsdCJ9fQ

### Showoff Documentation 
(Used for Creating Slide Shows using markdown with tons of
features
https://puppetlabs.github.io/showoff/

  To Install, have ruby and gem installed. Then just `gem install showoff`

## Create a Virtual Machine
- Download and install [Virtualbox](https://www.virtualbox.org/wiki/Downloads) for or whatever OS you are using.
- Download the minimal centos7 image
- In virtual box create a new vm
- call it a redhat 64 bit machine when asked for machine type
- give it at least 4 gigs of ram
- the type of disk should be dynamically sized (give it 50gb of disk)
- start it and select the minimal image as the 'iso'
	if it doesn't prompt you for an image
	- stop the vm
	- go into settings for that vm
	- go into disks
	- click on the cd looking thing
	- mount the iso as an image
	- install it
	- (it will prompt you for a disk (select what is available and hit done)
	- be sure to turn on the network also
	- while it is installing get a username and password
Let me know if you have questions for the installation

docker-chefclient
=================

A docker base client for running chefclient on.

The current implementation uses localmode of chef client version 11.8.0-2 (i.e. chef-zero)
to run chef-client.

This allows you to define the structure of your architecture locally and not be dependant on an existing chef server.

(future releases will allow the use of a chef server and perhaps allow you to upload your local settings via ```knife upload /```)

# Usage

1. docker build -t="chef-base" .

# Steps taken by Dockerfil

1. From the specified base install and run chef-client.
2. run runit-sv-service daemon. (Fork this for other supervising service management options?)

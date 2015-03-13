# Slot Machine Spike

## Quick Start

    $ docker-compose up

`sudo` might be needed if you're on Ubuntu.

* open http://localhost:3000/slots for the app
* open http://localhost:3001/#toc for the Swagger editor

## Hacking

Backend code is mostly [Mojolicious][mojo] using the [Swagger][swag]
plugin.  Frontend Slot Machine code is taken from Teemu Ikonen's
[git][git] (more detail on his [blog][blog].)

[mojo]: http://mojolicio.us
[swag]: http://swagger.io
[git]:  https://github.com/tikonen/blog/tree/master/slot
[blog]: http://bravenewmethod.com/2013/03/14/simple-slot-machine-with-html5/

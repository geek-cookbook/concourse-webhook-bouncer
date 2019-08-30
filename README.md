[cookbookurl]: https://geek-cookbook.funkypenguin.co.nz
[kitchenurl]: https://discourse.kitchen.funkypenguin.co.nz
[discordurl]: http://chat.funkypenguin.co.nz
[patreonurl]: https://patreon.com/funkypenguin
[blogurl]: https://www.funkypenguin.co.nz
[hub]: https://hub.docker.com/r/funkypenguin/alertmanager-discord/

[![geek-cookbook](https://raw.githubusercontent.com/funkypenguin/www.funkypenguin.co.nz/master/images/geek-kitchen-banner.png)][cookbookurl]

# Contents

- [Contents](#contents)
- [What is funkypenguin/concourse-webhook-bouncer ?](#what-is-funkypenguinconcourse-webhook-bouncer)
- [Why should I use this?](#why-should-i-use-this)
- [How do I use this?](#how-do-i-use-this)
- [CHANGELOG](#changelog)


---

This container is maintained by [Funky Penguin's Geek Cookbook][cookbookurl], a collection of "recipes" to run popular applications
on Docker Swarm or Kubernetes, in a cheeky, geek format.

Got more details at:
* ![Discourse with us!](https://img.shields.io/discourse/https/discourse.geek-kitchen.funkypenguin.co.nz/topics.svg) [Forums][kitchenurl]
* ![Chat with us!](https://img.shields.io/discord/396055506072109067.svg) [Friendly Discord Chat][discordurl]
* ![Geek out with us!](https://img.shields.io/badge/recipies-35+-brightgreen.svg) [Funky Penguin's Geek Cookbook][cookbookurl]
* ![Thank YOU](https://img.shields.io/badge/thank-you-brightgreen.svg) [Patreon][patreonurl]
* ![Read blog!](https://img.shields.io/badge/read-blog-brightgreen.svg) [Blog][blogurl]

---

# What is funkypenguin/concourse-webhook-bouncer ?

My favorite open-source, self-hosted CI system, Concourse, includes primitive support, allowing [webhooks to trigger jobs](https://concourse-ci.org/resources.html). The downside is that the Concourse UI has to be exposed to the Internet for the webhook URL to be reachable.

This container is a simply nginx proxy which will pass on valid Concourse webhook calls to an internal (non-publicaly-exposed) Concoruse URL, and disregard any other riffraff. 

I.e., a bouncer.

![Bouncer Penguin](images/muscle_penguin.png)

# Why should I use this?

You should use it if you:

1. Run Concourse-CI on a non-publicaly accessible URL
2. Want to respond to webhooks

# How do I use this?

Run the container with the following environment variables:

* `CONCOURSE_URL` : Set this to the full URL to your Concourse instance, i.e. https://concourse.batcave.org
* `RESOLVER` : Set this to choose an optional resolver. A default of `1.1.1.1` will be set.
  
# CHANGELOG

* Initial release : (_30 Aug 2019_)
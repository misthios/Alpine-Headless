# Alpine-Headless
Automatically deploy Alpine Linux on a system using a answerfile.

## Motivation
I wanted to rollout multiple Alpine virtual machines with different configs.
The Alpine install scripts have support to use seeded answers using a (remote) answerfile.
Another feature is loading an APKOVL after the iso to make additional packages / files available.

This Repo combines both features to create a overlay which pulls an specified answerfile to make deploying Alpine easier.

## Note
This tool requires a network with a functional DHCP server in order to fetch the answerfile with the final iface options. 

## Installing
Make sure to install xorisso and make

Clone the repo
```bash
git clone https://github.com/misthios/Alpine-Headless.git && cd Alpine-Headless 
```
## Usage
First create the overlay with the url to the answerfile
```bash
make URL=https://domain.tld/path 
```

Example:
```
make URL=https://raw.githubusercontent.com/misthios/Alpine-Headless/main/dhcp-answer
```

## Credits
Inspired By the work of @macmpi : https://github.com/macmpi/alpine-linux-headless-bootstrap


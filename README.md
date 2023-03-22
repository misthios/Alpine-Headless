# Alpine-Headless
Automatically deploy Alpine Linux on a system using a answerfile.

## Motivation
I wanted to rollout multiple Alpine virtual machines with different configs.
The Alpine install scripts have support to use seeded answers using a (remote) answerfile.
Another feature is loading an APKOVL after the iso to make additional packages / files available.

This Repo combines both features to create a overlay which pulls an specified answerfile to make deploying Alpine easier.

## Features
* create overlays with different urls to deploy servers
* (optional) run a script after the new server has booted

## Note
This tool requires a network with a functional DHCP server in order to fetch the answerfile with the final iface options. 

## Installing
Make sure to install the dependency xorriso

Clone the repo
```bash
git clone https://github.com/misthios/Alpine-Headless.git && cd Alpine-Headless 
chmod +x ./mkovl
```
## Usage
create the overlay with the url to the answerfile
```bash
./mkovl <-d> <-f <script location>> -u <answerfile url>  <-n overlay-myname>
```

Examples:
```
./mkovl -u https://raw.githubusercontent.com/misthios/Alpine-Headless/main/dhcp-answer
```
```
./mkovl -u https://raw.githubusercontent.com/misthios/Alpine-Headless/main/dhcp-answer -n overlay-dhcp
```
```
./mkovl -u https://raw.githubusercontent.com/misthios/Alpine-Headless/main/dhcp-answer -f ./myscript
```

## Credits
Inspired By the work of @macmpi : https://github.com/macmpi/alpine-linux-headless-bootstrap


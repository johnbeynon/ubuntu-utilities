## mongosync utility service

This repository contains a Render blueprint that will create a service that will allow `mongosync` to be run via shell or SSH.

By default it will mount a Render disk of 1GB at /var/state, see the render.yaml for making changes such as disk size, region or instance type

## Usage

* Fork the repo so you can make changes as needed
* Deploy a new blueprint from your fork of the repo

## Features

- Based on the latest Ubuntu LTS
- Includes mongosync

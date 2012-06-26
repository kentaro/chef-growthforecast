# chef-growthforecast

## Description

[Opscode Chef](http://www.opscode.com/chef/) cookbook for GrowthForecast.

- http://kazeburo.github.com/GrowthForecast/

## Requirements

None.

If you want Perl to be installed per users, use perlbrew recipe together.

- http://community.opscode.com/cookbooks/perlbrew

## Attributes

None.

## Platforms

- Ubuntu, Debian
- CentOS, RedHat
- MacOSX

## Usage

In your role file:

```
name        "growthforecast"
description "growthforecast server role."
run_list(
  "recipe[perlbrew]",       # if you want perl to be installed per users
  "recipe[growthforecast]"
)
```

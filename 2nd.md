[![License](http://img.shields.io/:license-apache-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0.html) [![Build Status](https://travis-ci.org/simp/pupmod-simp-sudosh.svg)](https://travis-ci.org/simp/pupmod-simp-sudosh) [![SIMP compatibility](https://img.shields.io/badge/SIMP%20compatibility-4.2.*%2F5.1.*-orange.svg)](https://img.shields.io/badge/SIMP%20compatibility-4.2.*%2F5.1.*-orange.svg)

#### Table of Contents

1. [Module Description - What the module does and why it is useful](#module-description)
2. [Setup - The basics of getting started with sudosh](#setup)
    * [What sudosh affects](#what-sudosh-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with sudosh](#beginning-with-sudosh)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)
7. [Acceptance Tests](#acceptance-tests)

## This is a SIMP module
This module is a component of the 
[System Integrity Management Platform](https://github.com/NationalSecurityAgency/SIMP),
a compliance-management framework built on Puppet.

If you find any issues, they can be submitted to our 
[JIRA](https://simp-project.atlassian.net/).

Please read our [Contribution Guide](https://simp-project.atlassian.net/wiki/display/SD/Contributing+to+SIMP)
and visit our [developer wiki](https://simp-project.atlassian.net/wiki/display/SD/SIMP+Development+Home).

## Module Description

This class installs sudosh and configures rsyslog and logrotate to support it.

Sudosh supports keystroke logging for users with root privilege. By running
`sudo sudosh`, a user will be escalated to root, but the sudosh shell will log
that user's keystrokes and output it to /var/log/sudosh/log. The command
sudosh-replay is used to replay the keystrokes of a session.

## Setup

The sudosh2-1.0.2-2 rpm has been tested to work with both syslog and logrotate.
The rpms have download links for adding them to your reposiroty below 
or are available in the SIMP-Project Repository.

#### Add SIMP Repository
See [Installing SIMP From A Repository.](http://simp.readthedocs.io/en/master/getting_started_guide/Installing_SIMP_From_A_Repository.html)

#### RPM Dowloads

Instead of installing the SIMP Repository, the rpms can be added to your current repository.
##### For EL6
https://dl.bintray.com/simp/4.2.X-Ext/sudosh2-1.0.2-2.el6.x86_64.rpm
##### For EL7
https://dl.bintray.com/simp/5.1.X-Ext/sudosh2-1.0.2-2el7.x86_64.rpm

### What sudosh affects

Sudosh installs sudosh, and optionally configures rsyslog for sudosh logging
and logrotates the sudosh user data.

### Setup Requirements
To enable the rsyslog and logrotate features, set simp_options::syslog and 
simp_options::logrotate to true in your hiera data. For example,
```
---
 simp_options:syslog : true
 simp_options:logrotate : true
```

### Beginning with sudosh

You can set up stunnel on a node by: 

```puppet
include sudosh 
```

or 

```yaml
---
classes:
  - sudosh
  ```

## Usage

### I want to ensure that my admins use sudosh specifically

To ensure admins use sudosh, so that actions are logged this is best performed
with the `simp/sudo` module, by creating a sudo rule that ONLY allows admins to
use sudosh.

Example:
```puppet
sudo::user_specification { 'global_admin':
  user_list => '%administrators',
  host_list => 'ALL',
  runas     => 'ALL',
  cmnd      => '/usr/bin/sudosh',
  passwd    => 'false'
}
```

## Reference

### Classes

#### Public Classes

* sudosh


### Parameters

#### `sudosh`

##### `syslog:`

Whether or not to include and use SIMP's rsyslog class
	* Valid Options: Boolean.
	* Default: `False`


##### `logrotate:`
Include and use SIMP's logrotate class
	* Valid Options: Boolean
	* Default `False`

## Limitations

This module is only designed to work in RHEL or CentOS 6 and 7. Any other
operating systems have not been tested and results cannot be guaranteed.

## Development
Please see the
[SIMP Contribution Guidelines](https://simp-project.atlassian.net/wiki/display/SD/Contributing+to+SIMP).

General developer documentation can be found on
[Confluence](https://simp-project.atlassian.net/wiki/display/SD/SIMP+Development+Home).
Visit the project homepage on [GitHub](https://simp-project.com),
chat with us on our [HipChat](https://simp-project.hipchat.com/),
and look at our issues on  [JIRA](https://simp-project.atlassian.net/).

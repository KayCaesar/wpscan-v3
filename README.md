![alt text](https://raw.githubusercontent.com/wpscanteam/wpscan/gh-pages/wpscan_logo_407x80.png "WPScan - WordPress Security Scanner") v3 BETA

[![Gem Version](https://badge.fury.io/rb/wpscan.svg)](https://badge.fury.io/rb/wpscan)
[![Build Status](https://travis-ci.org/wpscanteam/wpscan-v3.svg?branch=master)](https://travis-ci.org/wpscanteam/wpscan-v3)
[![Code Climate](https://codeclimate.com/github/wpscanteam/wpscan-v3/badges/gpa.svg)](https://codeclimate.com/github/wpscanteam/wpscan-v3)
[![Dependency Status](https://img.shields.io/gemnasium/wpscanteam/wpscan-v3.svg)](https://gemnasium.com/wpscanteam/wpscan-v3)

# LICENSE

## WPScan Public Source License

The WPScan software (henceforth referred to simply as "WPScan") is dual-licensed - Copyright 2011-2017 WPScan Team.

Cases that include commercialization of WPScan require a commercial, non-free license. Otherwise, WPScan can be used without charge under the terms set out below.

### 1. Definitions

1.1 "License" means this document.

1.2 "Contributor" means each individual or legal entity that creates, contributes to the creation of, or owns WPScan.

1.3 "WPScan Team" means WPScan’s core developers, an updated list of whom can be found within the CREDITS file.

### 2. Commercialization

A commercial use is one intended for commercial advantage or monetary compensation.

Example cases of commercialization are:

 - Using WPScan to provide commercial managed/Software-as-a-Service services.
 - Distributing WPScan as a commercial product or as part of one.
 - Using WPScan as a value added service/product.

Example cases which do not require a commercial license, and thus fall under the terms set out below, include (but are not limited to):

 - Penetration testers (or penetration testing organizations) using WPScan as part of their assessment toolkit.
 - Penetration Testing Linux Distributions including but not limited to Kali Linux, SamuraiWTF, BackBox Linux.
 - Using WPScan to test your own systems.
 - Any non-commercial use of WPScan.

If you need to purchase a commercial license or are unsure whether you need to purchase a commercial license contact us - team@wpscan.org.

We may grant commercial licenses at no monetary cost at our own discretion if the commercial usage is deemed by the WPScan Team to significantly benefit WPScan.

Free-use Terms and Conditions;

### 3. Redistribution

Redistribution is permitted under the following conditions:

 - Unmodified License is provided with WPScan.
 - Unmodified Copyright notices are provided with WPScan.
 - Does not conflict with the commercialization clause.

### 4. Copying

Copying is permitted so long as it does not conflict with the Redistribution clause.

### 5. Modification

Modification is permitted so long as it does not conflict with the Redistribution clause.

### 6. Contributions

Any Contributions assume the Contributor grants the WPScan Team the unlimited, non-exclusive right to reuse, modify and relicense the Contributor's content.

### 7. Support

WPScan is provided under an AS-IS basis and without any support, updates or maintenance. Support, updates and maintenance may be given according to the sole discretion of the WPScan Team.

### 8. Disclaimer of Warranty

WPScan is provided under this License on an “as is” basis, without warranty of any kind, either expressed, implied, or statutory, including, without limitation, warranties that the WPScan is free of defects, merchantable, fit for a particular purpose or non-infringing.

### 9. Limitation of Liability

To the extent permitted under Law, WPScan is provided under an AS-IS basis. The WPScan Team shall never, and without any limit, be liable for any damage, cost, expense or any other payment incurred as a result of WPScan's actions, failure, bugs and/or any other interaction between WPScan and end-equipment, computers, other software or any 3rd party, end-equipment, computer or services.

### 10. Disclaimer

Running WPScan against websites without prior mutual consent may be illegal in your country. The WPScan Team accept no liability and are not responsible for any misuse or damage caused by WPScan.

### 11. Trademark

The "wpscan" term is a registered trademark. This License does not grant the use of the "wpscan" trademark or the use of the WPScan logo.

# INSTALL

## Prerequisites:

- Ruby >= 2.2.2 - Recommended: 2.3.3
- Curl >= 7.21  - Recommended: latest - FYI the 7.29 has a segfault
- RubyGems      - Recommended: latest


### From RubyGems:

```gem install wpscan```

### From sources:

Prerequisites: Git

```git clone https://github.com/wpscanteam/wpscan-v3```

```cd wpscan```

```bundle install && rake install```

# Docker

Pull the repo with ```docker pull wpscanteam/wpscan-v3```

# Usage

Open a terminal and type ```wpscan --help``` (if you built wpscan from the source, you should type the command outside of the git repo)

The DB is located at ~/.wpscan/db

WPScan can load all options (including the --url) from configuration files, the following locations are checked (order: first to last):

* ~/.wpscan/cli_options.json
* ~/.wpscan/cli_options.yml
* pwd/.wpscan/cli_options.json
* pwd/.wpscan/cli_options.yml

If those files exist, options from them will be loaded and overridden if found twice.

e.g:

~/.wpscan/cli_options.yml:
```
proxy: 'http://127.0.0.1:8080'
verbose: true
```

pwd/.wpscan/cli_options.yml:
```
proxy: 'socks5://127.0.0.1:9090'
url: 'http://target.tld'
```

Running ```wpscan``` in the current directory (pwd), is the same as ```wpscan -v --proxy socks5://127.0.0.1:9090 --url http://target.tld```

# PROJECT HOME

[https://wpscan.org](https://wpscan.org)

# VULNERABILITY DATABASE

[https://wpvulndb.com](https://wpvulndb.com)

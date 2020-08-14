dfstools - Tidy Data Analytics from Sports Data APIs
================

## License: MIT

## What is this thing?

`dfstools` is an R package for Daily Fantasy Sports (DFS) analytics,
using the MySportsFeeds API and other data sources. The current release
features functions that access the MySportsFeeds v2.0 API and save the
tables to SQLite database files.

## Getting started

1.  Sign up for an account at
    [MySportsFeeds.com](https://www.mysportsfeeds.com/). You will need
    an account to use this package.
2.  Sign up for monthly support of MySportsFeeds on Patreon. After you
    do that, they will activate your login / API token.
      - [MySportsFeeds.com
        Patreon](https://www.patreon.com/mysportsfeeds)
3.  Browse the MySportsFeeds API docs at
    <https://www.mysportsfeeds.com/data-feeds/api-docs>. This package
    uses v2.0 and there is no plan to use the older API versions.

## Installing the package

1.  Install git, R and RStudio for your work environment. This is a
    developers’ release; for the moment, you’ll need to be familiar with
    git / GitHub, R and RStudio.
    
    I test regularly on Windows 10 Pro, Arch Linux and the [Silver
    Potato](https://github.com/znmeb/silver-potato) toolset, but any
    environment that supports RStudio Desktop or Server should work. If
    anything doesn’t work or the documentation is unclear, please file
    an issue at <https://github.com/znmeb/dfstools/issues/new/choose>

2.  Open RStudio. If you haven’t already, install `devtools` from CRAN.

3.  In the RStudio console, type
    `devtools::install_github("znmeb/dfstools")`.

## Features

`dfstools` has three classes of functions:

1.  Functions that read from the MySportsFeeds v2.0 API. These have
    names starting with `msf_`.
2.  Functions that create and populate SQLite databases. These have
    names starting with `sq_`.
3.  Analytics and visualization functions.

## Contributing

1.  Read the [code of
    conduct](https://github.com/znmeb/dfstools/blob/master/CODE_OF_CONDUCT.md)
    and [contributor’s
    guide](https://github.com/znmeb/dfstools/blob/master/CONTRIBUTING.md).
2.  Right now, the biggest contribution anyone can make is to use the
    package and tell me what works and doesn’t. I’ve intentionally
    designed version 1.0.0 to be simple and readable for R coders. So if
    there’s something that you build on top of this package that you
    think it should have, feel free to suggest it\!

## About some of the design decisions

Earlier versions of this package used the R wrapper provided by
MySportsFeeds, <https://github.com/MySportsFeeds/mysportsfeeds-r>. I
found I was spending so much time troubleshooting networking issues that
I decided to write my own low-level routine, `msf_get_feed`, and build
my own API on top of that.

I decided to use SQLite for the database because both the R interface
and the database administration process are much simpler than PostgreSQL
or MySQL. The databases we’re dealing with aren’t big enough to require
an industrial-strength relational database management system.

Analytics and visualization: I lean heavily on `mvglmmRank` for a quick
assessment of team capabilities. The results it gives are about as good
as you can get with just past scores as inputs. For player evaulation, I
use archetypal analysis, at least for basketball.

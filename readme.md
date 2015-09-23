serialise [![build badge][badge]][build]
=========

Description
-----------

Allows for serialisation and de-serialisation of Praat objects using JSON or YAML standards.

See [the troubleshooting page][trouble] for help with some common issues.

[trouble]: https://gitlab.com/cpran/plugin_serialise/wikis/home#troubleshooting

Requirements
------------

* Perl >= 5.010
  * Path::Class
  * Readonly
  * YAML::XS
  * JSON
  * File::HomeDir
  * Try::Tiny
* [utils](https://gitlab.com/cpran/plugin_utils)
* [selection](https://gitlab.com/cpran/plugin_selection)

[badge]: https://ci.gitlab.com/projects/2842/status.png?ref=master
[build]: https://ci.gitlab.com/projects/2842
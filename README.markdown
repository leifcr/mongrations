[![Build Status](https://travis-ci.org/leifcr/mongrations.svg)](https://travis-ci.org/leifcr/mongrations)

# Mongrations

Mongrations aims to be similar to ActiveRecord's data migrations, except
instead of worrying about schema changes, offering a way to change data when
necessary.

## Example

To generate a mongration:

`rails g mongration whatever_you_want_your_mongration_to_be`

Perform migrations

`rake mongo:mongrate`

Other rake tasks `mongo:mongrate:redo`, `mongo:mongrate:up`, `mongo:mongrate:down`, `mongo:mongrate:rollback`, `mongo:mongrate:version`.


## License

Released under the MIT license

# Summary

# Usage

## Ruby version

Ruby 2.7.3

Originally developed in `Ruby 2.7.3p183 (2021-04-05 revision 6847ee089d) [arm64-darwin23]`.

## System dependencies

Rails 6.0.6.1

See [Gemfile](https://github.com/yamada-masahiro/awesome_events/blob/main/Gemfile) for Ruby gems, and [package.json](https://github.com/yamada-masahiro/awesome_events/blob/main/package.json) for JavaScript packages.

## Configuration

## Database creation

## Database initialization

## How to run the test suite

## Services (job queues, cache servers, search engines, etc.)

### Install Search Engine

1. Visit [Elasticsearch Download Page](https://www.elastic.co/jp/downloads/elasticsearch).
2. Choose platform. If you develop on macOS on Apple silicon (ARM64), you should choose `macOS aarch64`.
3. Click `macOS aarch64` button and `sha` link to save below:
    (a) `elasticsearch-<ver>-<os>-<arch>.tar.gz`
    (b) `elasticsearch-<ver>-<os>-<arch>.tar.gz.sha512`
   in your local storage. For example, let's say you want to save them to the `$HOME` directory, `~`.
4. Open a CLI (terminal app), and type `cd ~` to change the current directory to the destination, which is, in the example, `~`.
5. Type `ls elasticsearch*` to make sure the two files exist in `$HOME`. If not, go back to 3.
6. Type `shasum -a 512 -c elasticsearch-<ver>-<os>-<arch>.tar.gz.sha512` to make sure the files were downloaded correctly.
7. Type `tar xzf elasticsearch-<ver>-<os>-<arch>.tar.gz` to expand the archive.
8. Type `rm elasticsearch-<ver>-<os>-<arch>.tar.gz elasticsearch-<ver>-<os>-<arch>.tar.gz.sha512` to remove them.
9. Type `cd elasticsearch-<ver>-<os>-<arch>`.
10. Type `bin/elasticsearch-plugin install analysis-kuromoji` to install `Kuromoji`, a morphological analyzer (形態素解析器).
11. Type `bin/elasticsearch` to configure Elasticsearch. Then you get below:

## Deployment instructions


<!-- This README would normally document whatever steps are necessary to get the -->
<!-- application up and running. -->

<!-- Things you may want to cover: -->

<!-- * Ruby version -->

<!-- * System dependencies -->

<!-- * Configuration -->

<!-- * Database creation -->

<!-- * Database initialization -->

<!-- * How to run the test suite -->

<!-- * Services (job queues, cache servers, search engines, etc.) -->

<!-- * Deployment instructions -->

<!-- * ... -->

# Firefox bookmarks plugin for Dillo

Provides a new bookmark plugin that synchronizes the bookmarks with a Firefox
Sync account. Replaces the Dillo builtin bookmark plugin so that the "Book"
button and the "Bookmark this page" menu entry work as expected.

It uses the [ffsclient program][1] to interact with the Firefox Sync server,
which must be installed.

[1]:https://github.com/Mikescher/firefox-sync-client

## Installation

Be sure you install the ffsclient program first.

To install the plugin use:

```
$ make install
```

## Configuration

To use this plugin you need a [Firefox
Sync](https://www.mozilla.org/firefox/features/sync/) account

Login to ffsclient for the first time by running and following the login steps:

```
$ ffsclient login <login> <password>
```

Once the login is completed, you will be able to use the plugin without a
password prompt. It stores your client secret in
`~/.config/firefox-sync-client.secret` by default.

## Usage

Open the bookmarks by using the "Book" button in the toolbar to list all
bookmarks. To add a new bookmark use the context menu and click on "Bookmark
this page".

New bookmarks are immediately synchronized with the bookmark server, in both
directions.

## Known limitations

- Opening the bookmarks is not immediate.
- Organization of bookmarks is not supported yet.

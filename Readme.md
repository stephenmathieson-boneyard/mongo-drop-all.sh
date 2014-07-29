
# mongo-drop-all.sh

  Drop all mongo databases.  This cannot be undone, so don't be stupid.

## Installation

  With [ghi](https://github.com/stephenmathieson/ghi):

```sh
$ ghi install stephenmathieson/mongo-drop-all.sh
```

  With git:

```sh
$ git clone https://github.com/stephenmathieson/mongo-drop-all.sh.git /tmp/mongo-drop-all && make -C /tmp/mongo-drop-all install
```

## Example

```sh
$ mongo-drop-all

  drop db1
  drop db2
  [...]
  drop db7

```

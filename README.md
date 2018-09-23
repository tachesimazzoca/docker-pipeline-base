# docker-pipeline-base

## Dependencies

* bash
* curl
* ssh
* rsync
* git

## Untility Commands

This image contains the following commands having the prefix `pipeline-*`.

### pipeline-ssh-key

Creates a SSH key file from STDIN.

```sh
$ pipeline-ssh-key
Usage: pipeline-ssh-key <identity-file-name>

$ pipeline-ssh-key my-ssh-key < /path/to/id_rsa

$ ls -la ~/.ssh/my-ssh-key
-rw-------    1 root     root  ... /root/.ssh/my-ssh-key
```

### pipeline-ssh-config

Prints a SSH host section generated with given parameters.

```sh
$ pipeline-ssh-config
Usage: pipeline-ssh-config <Host> <User> <HostName> [IdentityFile] [Port]

$ pipeline-ssh-config my-github git github.com '~/.ssh/my-github-ssh-key'
Host my-github
  User git
  HostName github.com
  IdentityFile ~/.ssh/my-github-ssh-key
  Port 22
```

### pipeline-ssh-config-add

Appends a SSH host section to `~/.ssh/config`. It's just a wrapper for `pipeline-ssh-config`.

```sh
$ pipeline-ssh-config-add my-github git github.com '~/.ssh/my-github-ssh-key'

$ cat /root/.ssh/config
...

Host my-github
  User git
  HostName github.com
  IdentityFile ~/.ssh/my-github-ssh-key
  Port 22
```


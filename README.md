# Donez

## Deploy
Prerequisites: password-less login to the production machine (use `ssh-copy-id user@host` for that)

Being in the project root, on your machine, execute `cap production deploy`

## Daemon controle
`cap production puma:status` - check status

`cap production puma:start` - start the daemon

.. stop

.. restart

## Seeds
To seed some test data run:
`rake db:seed` in project directory

Existing admin:
```
username: admin@9-vo.lt
password: 123456
```


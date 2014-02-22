Donez
========================

Deploy
________________________
1. log in through ssh `ssh donator@146.185.131.237 -p4321` (if you don't have access, ask boomboo, zarik or other ivan to add your public key to ~/.ssh/authorized_keys)
2. attach to tmux `tmux attach -t doneaza`
3. stop server `ctrl-c`
4. pull updates `git pull origin master`
5. run migrations if any `bundle exec rake db:migrate`
6. regenerate assets if any changed `rake assets:clean RAILS_ENV=production && rake assets:precompile RAILS_ENV=production`
7. start server `bundle exec unicorn_rails -E production`
8. detach from tmux `ctrl-b` followed by `d`


Seeds
________________________
To seed some test data run:
`rake db:seed` in project directory

Existing admin:
```
username: admin@9-vo.lt
password: 123456
```
TODO
________________________
1. Capistrano deploy script


License
________________________
Under discussion

Donez
========================

Deploy
________________________
1. log in through ssh
2. attach to tmux `tmux attach -t doneaza`
3. stop server `ctrl-c`
4. pull updates `git pull origin master`
5. run migrations if any `bundle exec rake db:migrate`
5. start server `bundle exec unicorn_rails -E production`
6. detach from tmux `ctrl-b` followed by `c`

License
________________________
Under discussion

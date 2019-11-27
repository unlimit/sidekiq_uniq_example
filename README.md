# README

## 1. bundle install

## 2. bin/rails s
 Sidekiq web ui http://localhost:3000/sidekiq

## 3. bundle exec sidekiq

## 3. Open rails console bin/rails c
Execute following code:

`Sidekiq::Client.push(
      'queue' => 'default',
      'class' => 'SomeWorker',
      'args' => [1]
    )`

Check http://localhost:3000/sidekiq/unique_digests, you will see that lock wasn't removed!

Next clean uniq digests manually via Web UI and execute

`Sidekiq::Client.push(
      'queue' => 'default',
      'class' => SomeWorker,
      'args' => [1]
    )`

Check http://localhost:3000/sidekiq/unique_digests, you will see that lock was removed!

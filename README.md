# Cats

Using minio to serve and store cute cats locally (using Rails, Paperclip and Paperclip's AWS S3 adapter).

## Setting Up Project

Currently uses Ruby 2.4.0 and Rails 5.0.2.

```
$ bundle install
```

## Starting Minio

Start minio before you start Rails or else you won't be able to save things.

You could install it directly... but docker is easier if you have it...

```
$ docker run -p 9000:9000 \
             -e MINIO_ACCESS_KEY=minio \
             -e MINIO_SECRET_KEY=minio123 \
             minio/minio \
             server /export
```

## Starting Rails

Nothing special here.

```
$ bundle exec rails db:reset
$ bundle exec rails s
```

## Example

Some cute cats served with minio:
![Example](/github/example.png)

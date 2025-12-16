# Just a tinyproxy container

## Infos

  - tinyproxy: https://tinyproxy.github.io/

## Usage

This container have a default config file as `/tinyproxy/tinyproxy.conf`, but You can override this as you wish with your config.

Just run, example:
```
docker-compose up -d
```

## Test

You can test like this:
```
curl -v https://google.com --proxy localhost:8888 -L
```

Check the certificate information, you get the valid cert from google. This is very nice.

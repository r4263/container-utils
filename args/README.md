# args 

Permits the usage of arguments with containers to execute alternate workflows within the container.

### You can test it yourself using:
#### `docker-compose.yml` 
```bash
docker compose up
```

OR

`cli`
```bash
docker run -it $(docker build -q .) --flag --option_value=http://example.com --separate_argument separate_value
```
`PS: you can ommit any flag you want and its values.`

The code in `entrypoint.sh` is well documented.
# curl-analyzer

This is a server that bounces back a response to any uri to show how curl is encoding things and how the server decodes them.

## Installation


Copy the binary to your desired location.


## Usage

Start the server with default port 8080:
```
./curl-analyzer
```

Start the server on a different port:
```
CURL_ANALYZER_PORT=<whatever port you want> ./curl-analyzer
```

Curl request to the server like so:
```
$ curl "localhost:8080/api/projects?name=my-project&host=10.1.33.2:4444"
Got path: /api/projects
Got raw query params: name=my-project&host=10.1.33.2%3A4444
Got parsed query params:
  name: my-project
  host: 10.1.33.2:4444
```

## Contributing

1. Fork it ( https://github.com/[your-github-name]/curl-analyzer/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [[dtakahas]](https://github.com/[dtakahas]) Dave Takahashi - creator, maintainer

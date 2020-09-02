# Contributing

## Commands

- `make lint`: Lints the whole source using [shellcheck][shellcheck-link].
- `make build`: Build the public directory to serve script files.
- `make locale`: Extract strings from scripts and add them to `.po` files,
 used to translate to other languages.
- `make test`: Run all tests with [shunit2][shunit2-link].

## How to upload patches

1. Change the code and add tests if you can.
2. Lint the code with `make lint`.
3. Run the test suite with `make test`.
4. [Request a pull][duck-duck-go-pull-request-link].

## Debug public server locally

### Ruby (recommended way)

> Requires Ruby >= 2.5 (see it with `ruby -v`)

1. Build distribution files: `make build`
2. Install `bundler` for Ruby: `gem install bundler`.
3. `cd public`
4. Install dependencies: `bundle install`
5. Start server: `bundle exec jekyll serve`

Now you can access to the public files in <http://127.0.0.1:4000>.

### Python3

```bash
python3 -m http.server 4000 -b 127.0.0.1 -d public
```

---

## Testing against other operative systems

The main purpose of this repository is to maintain a well tested suite of
 scripts for lastest LTS releases of Ubuntu. Beyond this, the scripts are 
 tested against Debian lastest LTS releases also to provide a common
 mechanism of write Debian based scripts with confidence.

### Debian docker images

If you need to access to a Docker machine with Debian 9 or 10 installed to test
 something, you can run the scripts located at `scripts/docker/debian/`. Use
 the option `--login` to login in the machines. For example, pull a Docker
 Debian 10 image and login into with: 

```bash
bash scripts/docker/debian/10.sh --login
```

[shellcheck-link]: https://www.shellcheck.net/
[shunit2-link]: https://github.com/kward/shunit2
[duc-duc-go-pull-request-link]: https://duckduckgo.com/?q=submit+pull+request

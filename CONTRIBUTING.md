# Contributing

## Commands

- `make lint`: Lints the whole source using [shellcheck](https://www.shellcheck.net/).
- `make build`: Build the public directory to serve script files.
- `make locale`: Extract strings from scripts and add them to `.po` files, used to translate to other languages.
- `make test`: Run all tests.

## How to upload patches

1. Change the code and add tests if you can.
2. Lint the code with `make lint`.
3. Run the test suite with `make test`.
4. [Request a pull](https://duckduckgo.com/?q=submit+pull+request).

## Debug public server locally

### Ruby (recommended way)

> Requires Ruby >= 2.5 (see it with `ruby -v`)

1. Build distribution files: `make build`
2. Install `bundler` for Ruby: `gem install bundler`.
3. `cd public`
4. Install dependencies: `bundle install`
5. Start server: `bundle exec jekyll serve`

Now you can access to the public files in `http://127.0.0.1:4000`.

### Python3

```bash
python3 -m http.server 4000 -b 127.0.0.1 -d public
```

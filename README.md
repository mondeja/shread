# shread
[![made-with-bash](https://img.shields.io/badge/-Bash-1f425f.svg?logo=image%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw%2FeHBhY2tldCBiZWdpbj0i77u%2FIiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8%2BIDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTExIDc5LjE1ODMyNSwgMjAxNS8wOS8xMC0wMToxMDoyMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkE3MDg2QTAyQUZCMzExRTVBMkQxRDMzMkJDMUQ4RDk3IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkE3MDg2QTAzQUZCMzExRTVBMkQxRDMzMkJDMUQ4RDk3Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6QTcwODZBMDBBRkIzMTFFNUEyRDFEMzMyQkMxRDhEOTciIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QTcwODZBMDFBRkIzMTFFNUEyRDFEMzMyQkMxRDhEOTciLz4gPC9yZGY6RGVzY3JpcHRpb24%2BIDwvcmRmOlJERj4gPC94OnhtcG1ldGE%2BIDw%2FeHBhY2tldCBlbmQ9InIiPz6lm45hAAADkklEQVR42qyVa0yTVxzGn7d9Wy03MS2ii8s%2BeokYNQSVhCzOjXZOFNF4jx%2BMRmPUMEUEqVG36jo2thizLSQSMd4N8ZoQ8RKjJtooaCpK6ZoCtRXKpRempbTv5ey83bhkAUphz8fznvP8znn%2B%2F3NeEEJgNBoRRSmz0ub%2FfuxEacBg%2FDmYtiCjgo5NG2mBXq%2BH5I1ogMRk9Zbd%2BQU2e1ML6VPLOyf5tvBQ8yT1lG10imxsABm7SLs898GTpyYynEzP60hO3trHDKvMigUwdeaceacqzp7nOI4n0SSIIjl36ao4Z356OV07fSQAk6xJ3XGg%2BLCr1d1OYlVHp4eUHPnerU79ZA%2F1kuv1JQMAg%2BE4O2P23EumF3VkvHprsZKMzKwbRUXFEyTvSIEmTVbrysp%2BWr8wfQHGK6WChVa3bKUmdWou%2BjpArdGkzZ41c1zG%2Fu5uGH4swzd561F%2BuhIT4%2BLnSuPsv9%2BJKIpjNr9dXYOyk7%2FBZrcjIT4eCnoKgedJP4BEqhG77E3NKP31FO7cfQA5K0dSYuLgz2TwCWJSOBzG6crzKK%2BohNfni%2Bx6OMUMMNe%2Fgf7ocbw0v0acKg6J8Ql0q%2BT%2FAXR5PNi5dz9c71upuQqCKFAD%2BYhrZLEAmpodaHO3Qy6TI3NhBpbrshGtOWKOSMYwYGQM8nJzoFJNxP2HjyIQho4PewK6hBktoDcUwtIln4PjOWzflQ%2Be5yl0yCCYgYikTclGlxadio%2BBQCSiW1UXoVGrKYwH4RgMrjU1HAB4vR6LzWYfFUCKxfS8Ftk5qxHoCUQAUkRJaSEokkV6Y%2F%2BJUOC4hn6A39NVXVBYeNP8piH6HeA4fPbpdBQV5KOx0QaL1YppX3Jgk0TwH2Vg6S3u%2BdB91%2B%2FpuNYPYFl5uP5V7ZqvsrX7jxqMXR6ff3gCQSTzFI0a1TX3wIs8ul%2Bq4HuWAAiM39vhOuR1O1fQ2gT%2F26Z8Z5vrl2OHi9OXZn995nLV9aFfS6UC9JeJPfuK0NBohWpCHMSAAsFe74WWP%2BvT25wtP9Bpob6uGqqyDnOtaeumjRu%2ByFu36VntK%2FPA5umTJeUtPWZSU9BCgud661odVp3DZtkc7AnYR33RRC708PrVi1larW7XwZIjLnd7R6SgSqWSNjU1B3F72pz5TZbXmX5vV81Yb7Lg7XT%2FUXriu8XLVqw6c6XqWnBKiiYU%2BMt3wWF7u7i91XlSEITwSAZ%2FCzAAHsJVbwXYFFEAAAAASUVORK5CYII%3D)](https://www.gnu.org/software/bash/) [![Ubuntu](https://img.shields.io/static/v1?label=Ubuntu&message=18.04%20%2F%2020.04&color=924D8C&logo=ubuntu&labelColor=black&logoColor=white)](https://ubuntu.com/)

Bash Ubuntu/Debian public scripts with localized and indented output.

[![Build status](https://img.shields.io/github/workflow/status/mondeja/shread/Deploy%20to%20Github%20Pages)](https://github.com/mondeja/shread/actions) [![TravisCI tests](https://img.shields.io/travis/mondeja/shread?label=tests)](https://travis-ci.com/github/mondeja/shread) [![Pull requests welcome!](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/mondeja/shread/pulls)

## Dependencies

Install `curl` before run any of the scripts to make sure that you will not have any errors in the execution.

## Scripts execution

### With arguments
```bash
curl -sL https://mondeja.github.io/shread/unix/debian/install/nodejs/es.sh \
    | sudo bash -s -- --help
```

### Without arguments
```bash
curl -sL https://mondeja.github.io/shread/unix/debian/install/nodejs/en.sh \
    | sudo bash -
```

### Sourcing
```bash
source <(curl -sL https://mondeja.github.io/shread/unix/_/util/get-distro/en.sh)
```

### Output
> The verbosity only is increased when failures happen.

#### English

```
$ curl -sL https://mondeja.github.io/shread/unix/debian/install/nodejs/en.sh | sudo bash -
Setting up NodeJS ecosystem...
  Checking base dependencies...
    build-essential ✔
    gcc ✔
    g++ ✔
    make ✔
    apt-transport-https ✔
    lsb-release ✔
    curl ✔
    gnupg ✔
  Found NodeJS installed in the system (v13.13.0) ✔
  Checking NPM...
    It's installed (v6.14.4) ✔
    It's updated ✔
  Checking Yarn...
    It's installed (v1.22.4) ✔
    It's updated ✔
```

#### Spanish

```
$ curl -sL https://mondeja.github.io/shread/unix/debian/install/nodejs/es.sh | sudo bash -
Configurando ecosistema NodeJS...
  Comprobando dependencias base...
    build-essential ✔
    gcc ✔
    g++ ✔
    make ✔
    apt-transport-https ✔
    lsb-release ✔
    curl ✔
    gnupg ✔
  Encontrado NodeJS instalado en el sistema (v13.13.0) ✔
  Comprobando NPM...
    Está instalado (v6.14.4) ✔
    Está actualizado ✔
  Comprobando Yarn...
    Está instalado (v1.22.4) ✔
    Está actualizado ✔
```

## Supported languages

- English :uk: :us:
- Spanish :es:

_____________________________________________________________

## Documentation
- [Files urls](https://mondeja.github.io/shread/list.txt)

### Common parameters
All scripts take some options:

<a name="help" href="#help">#</a> <b>-h, --help</b>

Shows an help message for the script and exits. 

<a name="indent" href="#indent">#</a> <b>-i, --indent</b> *string*

Each line of the script output will be preceded with the string defined in this parameter. As default an empty string.
This parameter is useful to render scripts output inside an indented context, for example:

```bash
printf "Downloading binaries...\n"
curl -sL https://mondeja.github.io/shread/unix/_/download/pacapt/en.sh \
  | sudo bash -s -- --indent '  '
curl -sL https://mondeja.github.io/shread/unix/_/download/shunit2/en.sh \
  | sudo bash -s -- --indent '  '
```

will render something like this:

```bash
Downloading binaries...
  Checking pacapt...
    Retrieving latest version... (v2.4.3) ✔
    Found installed ✔
  Checking shunit2...
    Retrieving lastest version... (v2.1.8) ✔
    Downloading shunit2 (v2.1.8) ✔
    Unzipping... ✔
```

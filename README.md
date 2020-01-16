# pre-commit-golang
Golang pre-commit hooks for http://pre-commit.com/
## install
you need first to install (pre-commit) [https://pre-commit.com/#install]
```
brew install pre-commit
```
install pre-commit into your git repo
```
pre-commit install
```
## Usage
Add a file named `.pre-commit-config.yaml` into the root directory of your repository
```yaml
repos:
  - repo: git://github.com/senfung/pre-commit-golang
    rev: master
    hooks:
      - id: go-fmt-import
      - id: go-vet
      - id: go-lint
      - id: go-unit-tests
      - id: gofumpt # requires github.com/mvdan/gofumpt
      - id: go-err-check # requires github.com/kisielk/errcheck
      - id: go-static-check # install https://staticcheck.io/docs/
      - id: golangci-lint # requires github.com/golangci/golangci-lint
```

## Credits
This repo is inspired by [Bahjat/pre-commit-golang](https://github.com/Bahjat/pre-commit-golang). Fixed the issue of golint always passing (as golint always exit with 0).


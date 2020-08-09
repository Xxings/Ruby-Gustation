# Ruby on Rails 맛보기

### 환경설정

- ruby 2.7.1 (200808 기준 stable)
- rbenv - ruby 버전관리
- Docker
- vscode-plugins

  - Ruby

- Ruby-linter = linter 자동
  - Rails Run space = space 자동
- VSCODE RUBY

### 빠른 언어학습

- [루비 20분 가이드](https://www.ruby-lang.org/ko/documentation/quickstart/)

- 백준 - Ruby 2.7.1

- Docs

  [Ruby-Doc.org](https://ruby-doc.org/)

  [DevDocs](https://devdocs.io/rails~5.0/)

## ## 세팅

 brew install rbenv ruby-build

```
rbenv install 2.7.1
rbenv global 2.7.1
rbenv rehash
# ruby -v 로 확인
gem install bundler
```



### Error

> ERROR:  While executing gem ... (Gem::FilePermissionError)

```bash
#~/.zshrc
[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"
```






### 링크 모음

[생활코딩](https://www.notion.so/xxings/Ruby-0dc2e3ed8a5e475aabf6d7808e83c046#42ae761bef91430c8a6cb98d90bb833d)
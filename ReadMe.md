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

````
rbenv install 2.7.1
rbenv global 2.7.1
rbenv rehash
# ruby -v 로 확인
gem install bundler
[reference](https://www.ruby-lang.org/ko/documentation/quickstart/)

[Java To Ruby](https://www.ruby-lang.org/ko/documentation/ruby-from-other-languages/to-ruby-from-java/)
[Python To ruby](https://www.ruby-lang.org/ko/documentation/ruby-from-other-languages/to-ruby-from-python/)

## 강추

> 언어 익숙해지기 - BOJ 알고리즘 양치기보다 구름IDE가 더 괜찮아보인다.
>
> 파이썬에서 쓰는 대부분 그대로 쓸수있어서, 헷갈리는 부분만 잡고 Rails로 넘어감.

[한 눈에 끝내는 루비 기초](https://edu.goorm.io/lecture/2011/%ED%95%9C-%EB%88%88%EC%97%90-%EB%81%9D%EB%82%B4%EB%8A%94-%EB%A3%A8%EB%B9%84-%EA%B8%B0%EC%B4%88)
[한 눈에 읽는 루비 온 레일즈](https://edu.goorm.io/lecture/16335/%ED%95%9C-%EB%88%88%EC%97%90-%EC%9D%BD%EB%8A%94-%EB%A3%A8%EB%B9%84-%EC%98%A8-%EB%A0%88%EC%9D%BC%EC%A6%88)

> 팁 모음

[알아두면 도음이 되는 55가지 루비 기법](https://gist.github.com/nacyot/7624036)

[루비 블록을 5분 이내에 마스터하기](https://rinae.dev/posts/mastering-ruby-blocks-in-less-than-5minutes-kor)
[나는 puts 디버거다 ](https://rinae.dev/posts/I-am-a-puts-debuggerer-kor)
[Ruby Class, Object, Variable](https://dimdim.tistory.com/entry/Ruby-%ED%81%B4%EB%9E%98%EC%8A%A4-%EA%B0%9D%EC%B2%B4-%EB%B3%80%EC%88%98)

```bash
#debug
gem update --system
gem install ruby-debug-ide
gem install debase
````

### 주석

=begin

_Multi _

_Line _

_Comments_

=end

### 변수

\$ - static

@ - local

[UPPER_CASE] - const

: - Symbol

### Type

- 정수 ( \_ 가능 )

- 실수

- 문자열 (파이썬과 동일)

- nil : not exsit

- boolean

"".length

"".empty?

"".reverse

"".upcase

"".capitalize

< 메서드 뒤에 ! 사용시 메서드 결과 변수에 적용>

{method}.respond_to? #응답 boolean [Array.each]

#{String interpolation}

%q[ ] # Non-interpolated String (except for \\ \[ and \])
%Q[ ] # Interpolated String (default)
%r[ ] # Interpolated Regexp (flags can appear after the closing delimiter)
%i[ ] # Non-interpolated Array of symbols, separated by whitespace
%I[ ] # Interpolated Array of symbols, separated by whitespace
%w[ ] # Non-interpolated Array of words, separated by whitespace
%W[ ] # Interpolated Array of words, separated by whitespace
%x[ ] # Interpolated shell command

### Array

array.size

array.reverse

array.inspect

array.join

Array.sort

(1..10) 1~10

(1...10) 1~9

(1..10).begin

(1..10).include?(11) # false

## Function

## Class

attr_accessor :{val} #set

### 구름 IDE

백준보다는 구름IDE의 수록 문제가 좋아 보임..
[한 눈에 끝내는 루비 기초](https://edu.goorm.io/lecture/2011/%ED%95%9C-%EB%88%88%EC%97%90-%EB%81%9D%EB%82%B4%EB%8A%94-%EB%A3%A8%EB%B9%84-%EA%B8%B0%EC%B4%88)
[한 눈에 읽는 루비 온 레일즈](https://edu.goorm.io/lecture/16335/%ED%95%9C-%EB%88%88%EC%97%90-%EC%9D%BD%EB%8A%94-%EB%A3%A8%EB%B9%84-%EC%98%A8-%EB%A0%88%EC%9D%BC%EC%A6%88)

### 예약어

![image-20200808222914379](https://tva1.sinaimg.cn/large/007S8ZIlgy1ghjq5yc3d8j314m0ramzw.jpg)

### 반복어

[times](https://www.geeksforgeeks.org/ruby-integer-times-function-with-example/)

```Ruby
6.times do |i|	#0 to 5
	puts "#{i}. Hello, Ruby!"
end

0.upto(5) do |i| #0 to 5
	puts "#{i}. Hello, Ruby!"
end
```

<<<<<<< HEAD

### Error

> ERROR: While executing gem ... (Gem::FilePermissionError)

````bash
#~/.zshrc
[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"
=======
### String

str.upcase()

str.downcase()

str.length()



루비에서는, **nil**과 **false**를 제외한 모든 것이 참으로 간주됩니다.

```ruby
# true
if 0
  puts "0 is true"
else
  puts "0 is false"
end
>>>>>>> ruby-lang/master
````

<<<<<<< HEAD

### 링크 모음

# [생활코딩](https://www.notion.so/xxings/Ruby-0dc2e3ed8a5e475aabf6d7808e83c046#42ae761bef91430c8a6cb98d90bb833d)

Object equal

```ruby
class Test
  # 기본값은 public입니다.
  def identifier
    99
  end

  def ==(other)
    identifier == other.identifier
  end
end

t1 = Test.new  # => #<Test:0x34ab50>
t2 = Test.new  # => #<Test:0x342784>
t1 == t2       # => true

# 이제 `identifier'를 protected로 만들지만 protected가 다른
# 객체에서의 참조를 허용하기 때문에 여전히 동작합니다.

class Test
  protected :identifier
end

t1 == t2  # => true

# 이제 `identifier'을 private으로 만듭니다.

class Test
  private :identifier
end

t1 == t2
# NoMethodError: private method `identifier' called for #<Test:0x342784>
```

????????????????

![image-20200809000817882](https://tva1.sinaimg.cn/large/007S8ZIlgy1ghjt0yzw3vj30zm0r6wjl.jpg)

> > > > > > > ruby-lang/master

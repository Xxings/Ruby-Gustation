[reference](https://www.ruby-lang.org/ko/documentation/quickstart/)

[Java To Ruby](https://www.ruby-lang.org/ko/documentation/ruby-from-other-languages/to-ruby-from-java/)
[Python To ruby](https://www.ruby-lang.org/ko/documentation/ruby-from-other-languages/to-ruby-from-python/)

```bash
#debug
gem update --system
gem install ruby-debug-ide
gem install debase
```
### 주석

=begin

*Multi *

*Line *

*Comments*

=end



### 변수

$  - static

@ - local

[UPPER_CASE] - const

: - Symbol



### Type

- 정수  ( _ 가능 )

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

{method}.respond_to?  #응답 boolean [Array.each]

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



attr_accessor :{val}	#set
# _Anagrams_

#### _An application that takes in two inputs from a user to determine if they are anagrams or not, 12/13/2019_

#### By _**Kyle Wymer**_

## Description

_This project demonstrates my current skills Ruby. The application runs the user's inputs through a serious of methods to determine if they are anagrams or not._


## Specifications

|  Behavior | Input  | Output  |
|---|---|---|
| Application checks if two words are anagrams | "ruby", "bury" | "These words are anagrams." |
| Application checks if two words are not anagrams | "ruby", "rails" | "These words are not anagrams." |
| Application accounts for the possibility that words might have different cases but should still be anagrams | "Ruby", "Bury" | "These words are anagrams." |
| Application checks if two words are actual words | "ruby", "bury" | "These are real words."|
| Application checks if two words are not actual words | "ruby", "br" | "You need to input actual words!" |
| Application checks if two words are antigrams | "ruby", "hello" | "These words have no letter matches and are antigrams."|
| Application checks if two words have letter matches | "ruby", "bury" | "These words have letter matches." |
| Application checks if two phrases are anagrams| "mother-in-law?", "woman hitler!" | "These words are anagrams."|
| Application checks if two phrases are not anagrams | "knock knock", "who's there?" | "These words are not anagrams."|



## Setup/Installation Requirements

* _Clone or download the repository from GitHub_
* _In the terminal, run $ gem install bundler_
* _To interact with application, in the terminal run $ chmod +x anagram_script.rb_
* _Then run $ ./anagram_script.rb_

## Known Bugs

_No known bugs_

## Support and contact details

_Please contact Kyle Wymer, at wymerkd@gmail.com if support is needed_

## Technologies Used

* _Ruby 2.5.1_
* _Gemfile_

## Resources Used
* _https://irb.rocks/comparison-arrays-ruby/_
* _https://stackoverflow.com/questions/21446369/deleting-all-special-characters-from-a-string-ruby/21446469_
* _https://stackoverflow.com/questions/1634750/ruby-function-to-remove-all-white-spaces_

### License

*Copyright <2019> <Kyle Wymer, Epicodus>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.*

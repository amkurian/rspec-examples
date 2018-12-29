require 'string_analyzer' 

describe StringAnalyzer do 
   context "With valid input" do 
      
      it "should detect when a string contains vowels" do 
         sa = StringAnalyzer.new 
         test_string = 'aeiou' 
         expect(sa.has_vowels? test_string).to be true 
      end 
		
      it "should detect when a string doesn't contain vowels" do 
         sa = StringAnalyzer.new 
         test_string = 'bcdfg' 
         expect(sa.has_vowels? test_string).to be false
      end 

      it "should detect when a string has only one vowel and no other letters" do
         sa = StringAnalyzer.new
         test_string = 'uuuu'
         expect(sa.has_vowels? test_string).to be true
      end

      it "should detect when a string is a combination of vowels and other letters" do
         sa = StringAnalyzer.new
         test_string = 'aewqw'
         expect(sa.has_vowels? test_string).to be true
      end

      it "should detect when a string is either uppercase or lowercase" do
         sa = StringAnalyzer.new
         test_string = 'AEIOU'
         expect(sa.has_vowels? test_string).to be true
      end
      
   end 
end
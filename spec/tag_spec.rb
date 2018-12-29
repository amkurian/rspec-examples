describe "How to run specific Examples with Tags" do 
   #rspec --tag slow tag_spec.rb
   it 'is a slow test', :slow => true do 
      sleep 10 
      puts 'This test is slow!' 
   end 
   
   #rspec --tag fast tag_spec.rb
   it 'is a fast test', :fast => true do 
      puts 'This test is fast!' 
   end 

   	 #rspec --tag slo tag_spec.rb
    it 'is a slow test', :slo => true do 
      sleep 10 
      puts 'This test is slow!' 
   end 
end
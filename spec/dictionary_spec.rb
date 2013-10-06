require 'rspec'
require 'dictionary'

describe Dictionary do
  it "initializes the dictionary" do
  test_dictionary = Dictionary.new
  test_dictionary.should be_an_instance_of Dictionary 
  end 
  it 'starts off empty' do
    test_dictionary = Dictionary.new
    test_dictionary.words.should eq({})
  end  
  it "adds a word" do
    test_dictionary = Dictionary.new
    test_dictionary.add_word("life", "Okay.")
    test_dictionary.words.should eq({"life"=>"Okay."})
  end
  it 'searches for a word in the hash based on a search term' do
    test_dictionary = Dictionary.new
    test_dictionary.locate("gro")
    test_dictionary.locate.should eq("gross" => "alex")
  end
end
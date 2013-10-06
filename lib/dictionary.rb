class Dictionary
  def initialize
    @entries = {}
  end

  def add_word(word, definition)
    @entries[word] =  definition
  end
  def words
    @entries
  end 
  def locate(search_term,definition)
  @entries.select {|word, definition| word.include?(search_term)}
  end
end
    
require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    array=self.split(/[.?!]/)
    array.map do |index|
      if index == ""
        array.delete_at(index)
      end
    end
    array.count
  end
end
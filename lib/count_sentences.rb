# NOTE: 'monkey patching': the practice of adding methods to or altering Ruby's built-in classes
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
    count = self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.size
    puts count
    count
  end
end

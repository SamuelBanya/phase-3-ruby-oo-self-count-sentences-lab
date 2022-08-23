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
    # This example is ridiculous since no where on the actual lesson is regex taught
    # for something like this, and chaining isn't even mentioned:
    count = self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.size
    puts count
    count
  end
end

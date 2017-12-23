require "yaml"
require "pry"

def load_library(file_path)
  file = YAML.load_file(file_path)
  library = {}
  file.each do |meaning, emoticons|
    binding.pry
    library["get_meaning"] = {}
    binding.pry
  end
end

def get_japanese_emoticon(emoticon)
  # code goes here
end

def get_english_meaning
  # code goes here
end

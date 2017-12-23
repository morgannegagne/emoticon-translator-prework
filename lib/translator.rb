require "yaml"
require "pry"

def load_library(file_path)
  file = YAML.load_file(file_path)
  library = {}
  file.each do |meaning, emoticons|
    library["get_meaning"] = {emoticons[1] => meaning}
    library["get_emoticon"] = {emoticons[0] => emoticons[1]}
  end
  library
  puts library
end

def get_japanese_emoticon(emoticon)
  # code goes here
end

def get_english_meaning
  # code goes here
end

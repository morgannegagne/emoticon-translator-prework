require "yaml"
require "pry"

def load_library(file_path)
  file = YAML.load_file(file_path)
  library = {"get_meaning" => {}, "get_emoticon" => {} }
  file.each do |meaning, emoticons|
    library["get_meaning"][emoticons[1]] = meaning
    library["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  library
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  library["get_emoticon"][emoticon]
  binding.pry
end

def get_english_meaning
  # code goes here
end

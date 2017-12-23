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
  japanese_emoticon = library["get_emoticon"][emoticon]
  japanese_emoticon
end

def get_english_meaning
  # code goes here
end

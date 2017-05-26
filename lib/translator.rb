# require modules here
require "yaml"

def load_library(location)
  # code goes here
  data = YAML.load_file(location)

  library = {}
  library["get_meaning"] = {}
  library["get_emoticon"] = {}

  data.each do |x,y|
    library["get_emoticon"][y[0]] = y[1]
    library["get_meaning"][y[1]] = x

  end

  return library
end

def get_japanese_emoticon(filepath, emoticon)
  # code goes here
  data = load_library(filepath)
  answer = "Sorry, that emoticon was not found"
  data["get_emoticon"].each do |x, y|
    if x == emoticon
      answer = y
    end
  end
  answer
end

def get_english_meaning(filepath, emoticon)
  # code goes here
  data = load_library(filepath)
  answer = "Sorry, that emoticon was not found"
  data["get_meaning"].each do |x, y|
    if x == emoticon
      answer = y
    end
  end
  answer
end

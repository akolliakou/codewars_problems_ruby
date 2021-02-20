# 6 kyu

# Modify the kebabize function so that it converts a camel case string into a kebab case.
# kebabize('camelsHaveThreeHumps') // camels-have-three-humps
# kebabize('camelsHave3Humps') // camels-have-humps

# Notes:
# the returned string should only contain lowercase letters

def kebabize(str)
  camel_str = ""
  clean_str = str.delete("^a-zA-Z")

  clean_str.chars do |char|
    if char == char.downcase
      camel_str << char
    else
      camel_str << "-" << char.downcase
    end
  end

  camel_str
end

p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'
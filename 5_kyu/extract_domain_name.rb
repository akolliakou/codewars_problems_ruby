# 5 kyu

# Write a function that when given a URL as a string, 
# parses out just the domain name and returns it as a string. 

def domain_name(str)
  clean_str = str.gsub(/[:.\/]/, " ").squeeze(" ")
  clean_arr = clean_str.split.select{ |word| word != 'http' && word != 'https' && word != 'www'}
  clean_arr[0]
end

p domain_name("http://www.zombie-bites.com") == "zombie-bites"
p domain_name("https://www.cnet.com") == "cnet"
p domain_name("http://google.com") == "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"
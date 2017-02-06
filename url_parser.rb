# "http://www.google.com/search?q=kittens"
# Should return "http"
# "ftp://cvcdd.com" should return "ftp"

def get_protocol(url)
 array = url.partition(":")
 puts array[0]

end

get_protocol("ftp://cvcdd.com")


# "http://www.google.com/search?q=kittens"
# Should return "www.google.com"
# "ftp://cvcdd.com" should return "cvcdd.com"

def get_domain(url)
  array = url.partition("//")
  array2 = array[2].partition("/")
  puts array2[0]

end

get_domain("http://www.google.com/search?q=kittens")
get_domain("ftp://cvcdd.com")

# "http://www.google.com/search?q=kittens"
# Should return "q=kittens"
# "ftp://cvcdd.com" should return "" (empty string)

def get_query_params(url)
  array = url.partition("?")
  puts array[2]
end

get_query_params("http://www.google.com/search?q=kittens")
get_query_params("ftp://cvcdd.com")

#------------------Assignment 1--------------------------

# "http://www.google.com/search/animals?q=kittens"
# Should return "search/animals"
# "ftp://cvcdd.com" should return "" (empty string)

# Notes:
# Used documentation from following links to help with this:
# https://docs.ruby-lang.org/en/2.1.0/URI.html
# http://stackoverflow.com/questions/13243195/how-to-parse-a-url-and-extract-the-required-substring 


def get_path(url)
  require 'uri'
  url = URI.parse(url)
  puts url.path
end

get_path("http://www.google.com/search/animals?q=kittens")
get_path("https://docs.ruby-lang.org/en/2.1.0/URI.html")
get_path("ftp://cvcdd.com")


#------------------Assignment 2--------------------------

# write another method (parse_url). It should print out URL, 
# protocol & domain when a string in the form of a url is
# passed to it.

# Notes: String templating with method not working properly
# therefore solved the assisnment using the long route.



def parse_url(url)
  protocol = url.partition(":")[0]
  domain = url.partition("//")[2].partition("/")[0]

  puts "Got url: #{url}"
  puts "Protocol: #{protocol}" 
  puts "Domain: #{domain}"
  puts "\n"

end

parse_url("http://www.google.com/search/animals?q=kittens")
parse_url("ftp://cvcdd.com")

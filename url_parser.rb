def parse_url(url) 
  protocol = get_protocol(url)
  domain = get_domain(url)
  path = get_path(url)
  query_params = get_query_params(url)

  parsed_url = {}
  parsed_url[:url] = url
  parsed_url[:protocol] = protocol
  parsed_url[:domain] = domain
  parsed_url[:path] = path
  parsed_url[:query_params] = query_params
  
  parsed_url
end


# "http://www.google.com/search?q=kittens"
# Should return "http"
# "ftp://cvcdd.com" should return "ftp"

def get_protocol(url)
 url_partitioned_at_colon = url.partition(":")
 url_partitioned_at_colon[0]
end



# "http://www.google.com/search?q=kittens"
# Should return "www.google.com"
# "ftp://cvcdd.com" should return "cvcdd.com"

def get_domain(url)
  url_partitioned_at_double_hash = url.partition("//")
  domain_partitioned_at_hash = url_partitioned_at_double_hash[2].partition("/")
  domain_partitioned_at_hash[0]
end


# "http://www.google.com/search?q=kittens"
# Should return "q=kittens"
# "ftp://cvcdd.com" should return "" (empty string)

def get_query_params(url)
  url_partitioned_at_question_mark = url.partition("?")
  url_partitioned_at_question_mark[2]
end


#------------------Assignment 1--------------------------

# "http://www.google.com/search/animals?q=kittens"
# Should return "search/animals"
# "ftp://cvcdd.com" should return "" (empty string)

# Notes:
# Used documentation from following links to help with this:
# https://docs.ruby-lang.org/en/2.1.0/URI.html
# http://stackoverflow.com/questions/13243195/how-to-parse-a-url-and-extract-the-required-substring 


def get_path(url)
  domain = get_domain(url)
  url_parts = url.partition(domain)
  path_with_query = url_parts[2].partition("?")
  path_with_query[0]
end

#------------------Assignment 2--------------------------

# write another method (parse_url). It should print out URL, 
# protocol & domain when a string in the form of a url is
# passed to it.

# Notes: String templating with method not working properly
# therefore solved the assisnment using the long route.



#------------------Assignment 3--------------------------

# write another method (parse_url). It should parse the URL passed
# into it and the returned value shpuld be in the form of a hash
# table with protocol, domain, path & query and their values listed
# as key, value pairs.

# For eg, "http://www.google.com/search/animals?q=kittens" when passed
# into parse_url(url) should return the following hash table:

# {url: 'http://www.google.com/search/animals?q=kittens', 
#   protocol: 'http', domain: 'www.google.com', path: '/search/animals',
# query_params: 'q=kittens'}


puts "Hash table for #{"http://www.google.com/search/animals?q=kittens"}: #{parse_url("http://www.google.com/search/animals?q=kittens")}" 
puts "\n"
puts "Hash table for #{"http://www.thefirehoseproject.com/comments/22082"}: #{parse_url("http://www.thefirehoseproject.com/comments/22082")}"
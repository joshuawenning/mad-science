require "open-uri"

sites = [
  "https://www.nytimes.com/",
  "https://www.youtube.com/"
]

tags = ["a", "div", "img"]

def fetch_page(url)
  URI.open(url).read # Implicit return
end

def count_tags(page, tag)
  page.scan(/<#{tag}\b/).length
end

sites.each do |url|
  puts "#{url} has:"
  tags.each do |tag|
    page = fetch_page(url)
    tag_count = count_tags(page, tag)
    puts "\t - #{tag_count} `<#{tag}>` tags"
  end
end
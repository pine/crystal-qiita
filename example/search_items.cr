require "readline"
require "../src/qiita"

loop do
  keyword = Readline.readline("Keyword> ")

  if keyword.is_a? String
    keyword = keyword.chomp
    result = Qiita.search_items({ query: keyword })

    puts "All #{keyword} #{result.size} items found."
    puts

    result.each_with_index do |item, i|
      puts "#{i.succ.to_s.rjust(2)}: #{item.title}"
      puts "  Author: #{item.user.id}" if item.user.id.to_s.size > 0
      puts "  URL   : #{item.url}"     if item.url.to_s.size > 0
      puts
    end
  end
end

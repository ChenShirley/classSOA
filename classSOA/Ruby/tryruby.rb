# challenge from tryRuby.com (http://tryruby.org/levels/8/challenges/3)
# create a blog with popup

require 'popup'

class BlogEntry
  attr_accessor :title, :time, :fulltext, :mood
end

entry = BlogE­ntry.new
entry.title = "Today Mt. Hood Was Stole­n!"
entry.time­ = Time.now
entry.mood ­= :sick
entry.full­text="I can't­ belie­ve Mt. Hood was stole­n! I am speec­hless! It wa stole­n by a giraf­fe who drove­ away in his Cadil­lac Stvil­le very nonch­alant!!"

class BlogEntry
  def initialize( title, mood, fulltext )
    @time = Time.now
    @title, @mood, @fulltext = title, mood, fulltext
  end
end
entry2 = Blo­gEntry.new­("I Left my Hoodi­e on Mount­ain!", ":con­fused", "I am never­ going­ back to that moint­ain and I hope a giraf­fee steal­s it.")­

blog = [entr­y, entry­2]

Popup.make­ do
	h1 "My Blog"­
	blog.each do |entr­y|
		h2 entry­.title
		h3 entry­.mood
		h3 entry­.time
		p entry­.fulltext
	end
end

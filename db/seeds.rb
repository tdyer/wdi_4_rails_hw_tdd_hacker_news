Article.delete_all
puts "Creating Users, with Articles and Articles with Comments"

# Joe's articles
joe = User.create!(email: 'joe@example.com', password: 'password')
article = Article.create!(title: 'Next IPhone rumors', url: 'http://www.theverge.com/2014/5/14/5718356/apple-iphone-6-rumors-90sotv')
joe.articles << article
Comment.create(content: "Whatever" , article: article, user: joe)
Comment.create!(content: "Isn't Steve Jobs Dead?", article: article, user: joe)


jill = User.create!(email: 'jill@example.com', password: 'password')
Comment.create!(content: "There are eels in My hovercraft", article: article, user: jill)

article = Article.create!(title: 'What Is Tor and Should I Use It?', url: 'http://lifehacker.com/what-is-tor-and-should-i-use-it-1527891029')
Comment.create!(content: "Sneaky, sneaky,haha", article: article, user: joe)
joe.articles.create!(title: 'Pickle Frenzy', url: 'http://www.moddb.com/games/pickle-frenzy')
joe.articles << article

article = Article.create!(title: 'Marathon Hero Settles Suit Against Boston Police', url: 'http://www.boston.com/news/local/massachusetts/2014/05/16/marathon-hero-settles-suit-against-boston-police/FXURcP7a62aLTc80wp0HuM/story.html')
Comment.create!(content: "Good for him", article: article, user: joe)
Comment.create!(content: "Poor cops", article: article, user: jill)

jill.articles << article

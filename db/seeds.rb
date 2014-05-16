Article.delete_all
puts "Creating Articles with Comments"

article = Article.create!(title: 'Next IPhone rumors', url: 'http://www.theverge.com/2014/5/14/5718356/apple-iphone-6-rumors-90sotv')
article.comments.create!(content: "OMG, so don't care")
article.comments.create!(content: "Isn't Steve Jobs Dead?")
article.comments.create!(content: "There are eels in My hovercraft")


Article.create!(title: 'Lawsuit alleges unauthorized publication of personal genetics data', url: 'http://arstechnica.com/tech-policy/2014/05/lawsuit-alleges-unauthorized-publication-of-personal-genetics-data/')

Article.create!(title: 'What Is Tor and Should I Use It?', url: 'http://lifehacker.com/what-is-tor-and-should-i-use-it-1527891029')

Article.create!(title: 'Pickle Frenzy', url: 'http://www.moddb.com/games/pickle-frenzy')


5.times do |i|
    comment = Comment.new(author: "rafael #{i}", body: "This is comment number #{i}")
    article = Article.new(title: "title no #{i}", body: "body no #{i}")
    article.comments << comment
    article.save
end
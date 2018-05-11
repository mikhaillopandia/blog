Article.destroy_all

5.times { CreateDemoArticleService.new.call }
puts 'Created 3 test aticles'

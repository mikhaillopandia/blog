class CreateDemoArticleService
  def call
    article = create_article
    [*(0..5)].sample.times do
      article.comments << Comment.create!(article: article, body: FFaker::Lorem.sentence, commenter: FFaker::Name.name)
    end
  end

  private

  def create_article
    article = Article.create!(title: FFaker::HipsterIpsum.sentence, text: FFaker::HipsterIpsum.paragraph)
    article.update_column(:created_at, [*(0..5)].sample.days.ago + [*(0..64_000)].sample)
    article.is_active
    article
  end
end

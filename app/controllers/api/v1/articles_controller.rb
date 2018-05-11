class Api::V1::ArticlesController < Api::V1::BaseJSONAPIController

  def index
    @articles = Article.all

    # render json: {
    #   data: articles_json(@articles)
    # }

    render json: {
      data: @articles
    }, include: params[:include]
  end

  def show
    @article = Article.find(params[:id])

    render json: {
      data: @article
    }, include: params[:include]
  end

  # private
  #
  # def articles_json(articles)
  #   articles.map{ |article| article_json(article) }
  # end
  #
  # def article_json(article)
  #     {
  #       id: article.id,
  #       type: 'atricles',
  #       attributes: {
  #         title: article.title,
  #         text: article.text
  #        }
  #     }
  # end
end

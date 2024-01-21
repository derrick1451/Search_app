class ArticlesController < ApplicationController
  include StringHelper
  def index
    query = params[:query]

    @articles = if query.present?
                  Article.search_by_title(query)
                else
                  Article.all
                end

    respond_to do |format|
      format.html do
        @articles = @articles.paginate(per_page: 10, page: params[:page])
      end
      format.turbo_stream { render turbo_stream: turbo_stream.replace('articles', partial: 'articles') }
    end
  end

  private

  def create_search(query, user_id)
    return unless query.present? && query.length >= 3

    last_unconfirmed_search = Search.where(user_id:, recorded: false).last

    last_unconfirmed_search.update(recorded: true) if last_unconfirmed_search && params[:recorded].present?

    if last_unconfirmed_search && similar_strings?(query, last_unconfirmed_search.query)
      last_unconfirmed_search.update(query:)
    else
      Search.create(query:, user_id:)
    end
  end
end

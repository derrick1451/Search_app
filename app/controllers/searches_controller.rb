class SearchesController < ApplicationController
    def index
        @user_searches = Search.where(user: User.first).group(:query).order(count: :desc).count
    end
end

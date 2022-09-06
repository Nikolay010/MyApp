# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article, only: %i[show destroy edit update discard restore]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to articles_path, notice: 'Article was created'
    else
      render :new
    end
  end

  def show
    @article.title
  end

  def edit
    @article
  end

  def update
    @article

    if @article.update(article_params)
      redirect_to articles_path
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path, notice: 'Article was removed'
  end

  def restore
    @article.undiscard
    redirect_to articles_path, notice: 'Article was restored'
  end

  def discard
    @article.discard
    redirect_to articles_path, notice: 'Article was deleted'
  end

  private

  def article_params
    params.require(:article).permit(:title, :description)
  end

  def set_article
    @article = Article.with_discarded.find(params[:id])
  end
end

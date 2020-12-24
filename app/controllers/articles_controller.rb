class ArticlesController < ApplicationController
  # 記事の一覧表示
  def index
    @articles = Article.all
  end

  # 記事の表示
  def show
    @article = Article.find(params[:id])
  end

  # 記事の作成
  def new 
  end

  # 記事の登録
  def create
    # articleモデルの属性の初期化
    @article = Article.new(article_params)

    # articleモデルをDBへ保存
    @article.save

    # showアクションにリダイレクト
    redirect_to @article
  end

  # 記事の編集
  def edit
  end

  # 記事の更新
  def update
  end

  # 記事の削除
  def destroy
  end

  # コントローラパラメータの定義
  private
  def article_params
      params.require(:article).permit(:title, :text)
  end
end

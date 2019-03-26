class ArticlesController < ApplicationController
  #GET /articles  Esta accion trae la lista de todos los articulos
  def index
    #Todos los registros select * from articles;
    @articles = Article.all
  end
  #GET /articles/:id
  def show
    #Encontrar un registro por id
    @article = Article.find(params[:id])
  end
  #GET /articles/new
  def new
    @article = Article.new
  end
  #POST /articles
  def create
    #Este seria como un INSERT INTO
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
     else
      render :new
     end
  end

  def edit
    @article = Article.find(params[:id])
  end

  #PUT /articles/:id
  def update
    #update
    #@article.update_attributes({title: 'Nuevo titulo'})
  end
  #DELETE /articles/:id
  def destroy
    #Delete From articles;
    @article = Article.find(params[:id])
    @article.destroy #Destroy elimina el objeto de la base de datos
    redirect_to articles_path
  end

  private
  #El nombre es convencion, nombre del modelo _ params
  def article_params
    params.require(:article).permit(:title,:body)
  end

end

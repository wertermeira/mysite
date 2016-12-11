class Backend::PostsController < BackendController
  before_action :set_post, only: [:show, :edit, :update,:destroy]

  def index
    @posts = Post.order(id: :desc).page(params[:page]).per(10)
  end

  def show
  end

  def new
    @post = Post.new
    @post.build_image
  end
  def create
    @post = Post.new(set_params)
    if @post.save
      redirect_to backend_posts_path, notice: "cadastrado com sucesso"
    else
      @post.build_image
      render :new
    end

  end
  def edit
    #@post.build_image
  end

  def update
    if @post.update(set_params)
      redirect_to backend_posts_path, notice: "(#{@post.title}) Atualizado com sucesso"
    else
      render :edit
    end
  end

  def destroy
    post = @post.title
    if @post.delete
      redirect_to backend_posts_path, notice: "Post (#{post}) foi deletado com sucesso"
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def set_params
    params.require(:post).permit(:title, :description, :link, image_attributes:[:id,:file])
  end



end

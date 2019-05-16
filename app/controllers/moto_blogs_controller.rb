class MotoBlogsController < ApplicationController
  before_action :set_moto_blog, only: [:show, :edit, :update, :destroy]

  # GET /blogs
  # GET /blogs.json
  def index
    @moto_blogs = MotoBlog.all
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
  end

  # GET /blogs/new
  def new
    @moto_blog = MotoBlog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @moto_blog = MotoBlog.new(moto_blog_params)

    respond_to do |format|
      if @moto_blog.save
        format.html { redirect_to @moto_blog, notice: 'Moto Blog was successfully created.' }
        format.json { render :show, status: :created, location: @moto_blog }
      else
        format.html { render :new }
        format.json { render json: @moto_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    respond_to do |format|
      if @moto_blog.update(moto_blog_params)
        format.html { redirect_to @moto_blog, notice: 'Moto Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @moto_blog }
      else
        format.html { render :edit }
        format.json { render json: @moto_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @moto_blog.destroy
    respond_to do |format|
      format.html { redirect_to moto_blogs_url, notice: 'Moto Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moto_blog
      @moto_blog = MotoBlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moto_blog_params
      params.require(:moto_blog).permit(:title, :story, :author)
    end
end

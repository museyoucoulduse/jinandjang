class PosCommentsController < ApplicationController
  before_action :set_pos_comment, only: [:show, :edit, :update, :destroy]

  # GET /pos_comments
  # GET /pos_comments.json
  def index
    @pos_comments = PosComment.all
  end

  # GET /pos_comments/1
  # GET /pos_comments/1.json
  def show
  end

  # GET /pos_comments/new
  def new
    @pos_comment = PosComment.new
  end

  # GET /pos_comments/1/edit
  def edit
  end

  # POST /pos_comments
  # POST /pos_comments.json
  def create
    @pos_comment = PosComment.new(pos_comment_params)

    respond_to do |format|
      if @pos_comment.save
        format.html { redirect_to @pos_comment, notice: 'Pos comment was successfully created.' }
        format.json { render :show, status: :created, location: @pos_comment }
      else
        format.html { render :new }
        format.json { render json: @pos_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pos_comments/1
  # PATCH/PUT /pos_comments/1.json
  def update
    respond_to do |format|
      if @pos_comment.update(pos_comment_params)
        format.html { redirect_to @pos_comment, notice: 'Pos comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @pos_comment }
      else
        format.html { render :edit }
        format.json { render json: @pos_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pos_comments/1
  # DELETE /pos_comments/1.json
  def destroy
    @pos_comment.destroy
    respond_to do |format|
      format.html { redirect_to pos_comments_url, notice: 'Pos comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pos_comment
      @pos_comment = PosComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pos_comment_params
      params.require(:pos_comment).permit(:body, :positive_reaction)
    end
end

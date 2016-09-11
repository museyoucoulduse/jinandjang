class NegCommentsController < ApplicationController
  before_action :set_neg_comment, only: [:show, :edit, :update, :destroy]

  # GET /neg_comments
  # GET /neg_comments.json
  def index
    @neg_comments = NegComment.all
  end

  # GET /neg_comments/1
  # GET /neg_comments/1.json
  def show
  end

  # GET /neg_comments/new
  def new
    @neg_comment = NegComment.new
  end

  # GET /neg_comments/1/edit
  def edit
  end

  # POST /neg_comments
  # POST /neg_comments.json
  def create
    @neg_comment = NegComment.new(neg_comment_params)

    respond_to do |format|
      if @neg_comment.save
        format.html { redirect_to @neg_comment, notice: 'Neg comment was successfully created.' }
        format.json { render :show, status: :created, location: @neg_comment }
      else
        format.html { render :new }
        format.json { render json: @neg_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /neg_comments/1
  # PATCH/PUT /neg_comments/1.json
  def update
    respond_to do |format|
      if @neg_comment.update(neg_comment_params)
        format.html { redirect_to @neg_comment, notice: 'Neg comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @neg_comment }
      else
        format.html { render :edit }
        format.json { render json: @neg_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /neg_comments/1
  # DELETE /neg_comments/1.json
  def destroy
    @neg_comment.destroy
    respond_to do |format|
      format.html { redirect_to neg_comments_url, notice: 'Neg comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_neg_comment
      @neg_comment = NegComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def neg_comment_params
      params.require(:neg_comment).permit(:body, :positive_reaction)
    end
end

class Web::Authentication::MicropostsController < ::Web::AuthenticationController
  before_action :set_micropost, only: %i[destroy]

  # GET /microposts/new
  def new
    @micropost = current_user.microposts.build
  end

  # POST /microposts
  # POST /microposts.json
  def create
    @micropost = current_user.microposts.build(micropost_params)

    if @micropost.save
      redirect_to @micropost, notice: 'Micropost was successfully created.'
    else
      render :new
    end
  end

  # DELETE /microposts/1
  # DELETE /microposts/1.json
  def destroy
    @micropost.destroy
    respond_to do |format|
      format.html { redirect_to microposts_url, notice: 'Micropost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micropost
      @micropost = current_user.microposts.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micropost_params
      params.require(:micropost).permit(:content)
    end
end

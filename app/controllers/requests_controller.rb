class RequestsController < ApplicationController
  before_action :check_admin, except: [:new, :create]

  def index
    @data = Request.all
  end

  def new
  	@request = Request.new
  end

  def create
    @request = current_user.requests.build(request_params)
    if @request.save
      redirect_to root_path, notice: 'Tutorial Submitted'
    else
      render :new
    end
  end

  def destroy
    request = Request.find(params[:id])
    if request.destroy
      redirect_to :back, notice: 'Request Deleted'
    else
      redirect_to :back, notice: 'Something Wrong'
    end
  end

  private
  def request_params
    params.require(:request).permit(:category, :link, :user_id)
  end

  private
  def tutorial_link_params
    params.require(:tutorial_link).permit(:title, :link, :user_id, :tutorial_id)
  end
end

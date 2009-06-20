class PomodorosController < ApplicationController
  
  before_filter :login_required

  def create
    @pomodoro = Pomodoro.new(params[:pomodoro])
    respond_to do |format|
      if @pomodoro.save
        format.xml do
          render :xml => @pomodoro, :status => :created, :location => @pomodoro
        end
      end
    end
  end

  def index
    @users = User.all
  end

end

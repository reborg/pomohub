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
    @pomodoro_count_by_user_list = Pomodoro.count(:group => "users.login", :joins => "LEFT JOIN users on pomodoros.user_id = users.id").invert.sort.reverse
  end

end

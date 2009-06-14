class PomodorosController < ApplicationController

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

end

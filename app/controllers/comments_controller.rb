class CommentsController < ApplicationController
  def show
    @comments = @appointment.comments.all
  end

  def new
    @comment = @appointment.Comment.new
  end

  def edit
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end
end

class QuestionsController < ApplicationController
  def ask
  #  @question = params[:question] if params[:question].present?
  end

  def answer
    @question = params[:question] if params[:question].present?
    @answer =
    if @question.downcase == 'i am going to work right now!'
      'Great!'
    elsif @question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end

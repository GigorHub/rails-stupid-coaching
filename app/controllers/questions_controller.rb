class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question] if params[:question].present?
    if @question.blank?
      @answer = "I can't hear you!"
    elsif @question.downcase == 'i am going to work right now!'
      @answer = 'Great!'
    elsif @question.downcase =~ /i am going to work/i
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

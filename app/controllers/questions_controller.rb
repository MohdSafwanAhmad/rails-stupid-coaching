class QuestionsController < ApplicationController
  def ask
    return @question
  end

  def answer
    @question = params[:question]
    if @question.start_with?("I am going to work")
      @response = "Great!"
    elsif @question.end_with?("?")
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end

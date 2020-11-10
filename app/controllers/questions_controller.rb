class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # define @question to send to view
    @question = params[:question]
    coach_answer
  end

def coach_answer
  if params[:question][-1] == "?"
    @coach_answer = "Silly question, get dressed and go to work!"
  elsif params[:question] == "I am going to work right now!"
    @coach_answer =  "Great"
  else
    @coach_answer =  "I don't care, get dressed and go to work!"
  end
end
end

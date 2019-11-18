class QuestionsController < ApplicationController
  def ask
    # this method is simply so that the controller will know to go find ask.html.erb
    # otherwise it doesnt know how to handle the get request (the homepage is question#ask)
  end

  def answer
    if params['greeting']
      @question = params['greeting']
      if params['greeting'][-1] == '?'
        @answer = 'Silly question, get dressed and go to work!'
      elsif params['greeting'] == 'I am going to work'
        @answer = 'Great!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    else
      @question = ""
      @answer = "You didnt ask a question"
    end
  end
end

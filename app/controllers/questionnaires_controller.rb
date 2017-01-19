class QuestionnairesController < ApplicationController
  def show
   @questionnaire = Course.find(params[:id])
  end
end

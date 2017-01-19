class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
  end

  def planning
    @courses = Course.select { |course| course.day >= Date.today }.sort_by{ |c| c.day && c.start_hour }.reverse
    @old_courses = Course.select { |course| course.day < Date.today }
  end

  def messagerie
    @messages = Message.all.sort_by { |m| m.created_at }
  end

  def questionnaire
    @questionnaires = Questionnaire.all.sort_by { |m| m.created_at }
  end

  def conseils
    @conseils = Conseil.all.sort_by { |m| m.created_at }
  end

  def objectives
  end
end

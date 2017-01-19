class ConseilsController < ApplicationController
  def show
   @conseil = Conseil.find(params[:id])
  end
end

class MindcatchesController < ApplicationController

before_action :authenticate_user
  
  def create

    @mindcatch = Mindcatch.new(user_id: @current_user.id, post_id: params[:post_id])
    
    @mindcatch.save
    
    redirect_to("/posts/#{params[:post_id]}")

  end

  def destroy
    @mindcatch = Mindcatch.find_by(user_id: @current_user.id, post_id: params[:post_id])
    @mindcatch.destroy
    redirect_to("/posts/#{params[:post_id]}")
  end
  
end

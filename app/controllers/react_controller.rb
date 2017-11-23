class ReactController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  def react_index
  	p "react_index",params
  	 render :file => "#{Rails.root}/public/react_demo/react_index", :layout => false
  end

end
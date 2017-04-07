#encoding: utf-8
class HomeController < ApplicationController
	before_action :authenticate_user!
	def index
		p "hello!  HomeController index"
	end

end
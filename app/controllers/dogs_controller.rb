class DogsController < ApplicationController
	def home
		@cats = Cat.all
		@todos = Todo.all
		@users = User.all
	end

	def new
		@todo = Todo.new
	end

	def create 
		todo = Todo.new(task: params[:todo][:task], finished: params[:todo][:finished])
		todo.save!

		redirect_to root
	end
end
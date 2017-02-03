class ProblemsController < ApplicationController
	def index
		@problem = Problem.new
		render :action => 'index'
	end
	
	def confirm
		@problem = Problem.new(problem_params)
		if @problem.valid?
			#確認画面表示
			render :action => 'confirm'
		else 
			#エラー。元の画面へ
			render :action => 'index'
		end
	end
	
	def thanks
		@problem = Problem.new(problem_params)
		ProblemMailer.received_email(@problem).deliver

		render :action => 'thanks'
	end

	private
	def problem_params
		params.require(:problem).permit(:name,:email,:message)
	end
end

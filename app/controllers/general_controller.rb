class GeneralController < ApplicationController

	def index
		respond_to do |format|
			format.html {render :layout => false}
		end
	end

	def quote
		respond_to do |format|
			format.html #quote.html.erb
		end
	end

	def story
		respond_to do |format|
			format.html #story.html.erb
		end
	end

	def help
	    respond_to do |format|
			format.html #help.html.erb
		end
	end

	def drawingboard
		 respond_to do |format|
			format.html #drawingboard.html.erb
		end
	end

	def send_email
		@body = params[:body]
		@from = params[:interested]
		SendMail.send_emails(@body, @from).deliver
	end

end

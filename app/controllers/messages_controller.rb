class MessagesController < ApplicationController
	before_action :authenticate_user!

	def index
		@messages = Message.all
	end

	def new
		@message = Message.new
		@user = User.all
		@message.sender_id = current_user.id
		@message.save
	end
	
	def create
		message_params
		@message = Message.new(message_params)
<<<<<<< HEAD


=======
>>>>>>> d83afb6c2c51c2a303d05c4d2b87ddbe8b5fbc46
		@message.save
		redirect_to @message
	end

	def show
		@message = Message.find(params[:id])

	end

	def edit
		@message = Message.find(params[:id])
		@user = User.all
	end

	def update
		@message = Message.find(params[:id])
		if @message.update(message_params)
			redirect_to message_path
		else
			render 'edit'
		end

	end

	private
	def message_params
		params.require(:message).permit(:reciever_id,:sender_id,:title,:message_text)


	end

end

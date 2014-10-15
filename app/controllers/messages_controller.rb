class MessagesController < ApplicationController
	before_action :authenticate_user!

	def index
		@messages = Message.all
	end

<<<<<<< HEAD
=======
	def new
		@message = Message.new
		@user = User.all
		@message.sender_id = current_user.id
		@message.save
	end
	
	def create
		message_params
		@message = Message.new(message_params)
>>>>>>> 3ac128a71181b6e48a0fb35f633bb3031a32a8eb

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

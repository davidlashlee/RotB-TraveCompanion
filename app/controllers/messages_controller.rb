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
<<<<<<< HEAD
=======

>>>>>>> 2d8d02f6f5f6fe94cec745456b8c826473cd0e45

def create
	message_params
	@message = Message.new(message_params)

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
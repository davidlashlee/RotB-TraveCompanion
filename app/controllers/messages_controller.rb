class MessagesController < ApplicationController
	before_action :authenticate_user!

def index
	@message = Message.all
end

def new
	@message = Message.new
	@message.sender = current_user.id
	@message.save
	end

def create
	@message = Message.new(message_params)

	@message.save
	redirect_to @message
end

def show
	@message = Message.find(params[:id])
	
end

def edit
		@message = Message.find(params[:id])
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
	params.require(:message).permit(:reciever,:sender,:title,:message_text)

	
end

end
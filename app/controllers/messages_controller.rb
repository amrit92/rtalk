class MessagesController < ApplicationController
	def index
		@messages = Message.all
	end

	def create
		@room = Room.find_by_id(params[:message][:room_id])
		@message = Message.create!(params[:message])
		PrivatePub.publish_to(room_path(@room), message: @message)
	end
end

class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:in_messages_index, :out_messages_index]

  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all
  end

  # GET /users/1/in_messages
  def in_messages_index
    respond_to do |format|
      format.json { render json: @user.in_messages.to_json( include: { sender: {only: :nickname}}, except: [:id, :updated_at]), status: :ok }
    end
  end

  # GET /users/1/out_messages
  def out_messages_index
    respond_to do |format|
      format.json { render json: @user.out_messages.to_json( include: { receiver: { only: :nickname }}, except: [:id, :updated_at]), status: :ok }
    end
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
  end

  # GET /messages/new
  def new
    @message = Message.new
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create
    @message = Message.new(message_params)

    respond_to do |format|
      if @message.save
        format.html { redirect_to @message, notice: 'Message was successfully created.' }
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
    puts "ID::#{params[:id]}"
    @message = Message.find(params[:id])
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to messages_url, notice: 'Message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:user1, :user2, :message)
    end
end

class ClientsController < ApplicationController

  def index
    @clients = Client.all.order('created_at DESC')
  end

  def new
    @client = Client.new
  end

  def show
  end

  def edit
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      flash[:success] = "CLIENT CREATED"
      redirect_to client_path(@client)

    else
      render :new
    end
  end

  def update
    if @client.update(article_params)
      flash[:success] = "UPDATES SAVED"
      redirect_to client_path(@client)

    else
      render :edit
    end
  end

  def destroy
    @client.destroy
    flash[:danger] = "CLIENT REMOVED"
    redirect_to clients_path
  end

  private

  def client_params
    params.require(:client).permit(:firstname, :lastname, :description, :email, :phone)
  end




end

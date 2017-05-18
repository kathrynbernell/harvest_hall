class FarmersController < ApplicationController
  def index
    @farmers = Farmer.all

    render("farmers/index.html.erb")
  end

  def show
    @farmer = Farmer.find(params[:id])

    render("farmers/show.html.erb")
  end

  def new
    @farmer = Farmer.new

    render("farmers/new.html.erb")
  end

  def create
    @farmer = Farmer.new

    @farmer.name = params[:name]
    @farmer.location = params[:location]
    @farmer.image = params[:image]

    save_status = @farmer.save

    if save_status == true
      redirect_to("/farmers/#{@farmer.id}", :notice => "Farmer created successfully.")
    else
      render("farmers/new.html.erb")
    end
  end

  def edit
    @farmer = Farmer.find(params[:id])

    render("farmers/edit.html.erb")
  end

  def update
    @farmer = Farmer.find(params[:id])

    @farmer.name = params[:name]
    @farmer.location = params[:location]
    @farmer.image = params[:image]

    save_status = @farmer.save

    if save_status == true
      redirect_to("/farmers/#{@farmer.id}", :notice => "Farmer updated successfully.")
    else
      render("farmers/edit.html.erb")
    end
  end

  def destroy
    @farmer = Farmer.find(params[:id])

    @farmer.destroy

    if URI(request.referer).path == "/farmers/#{@farmer.id}"
      redirect_to("/", :notice => "Farmer deleted.")
    else
      redirect_to(:back, :notice => "Farmer deleted.")
    end
  end
end

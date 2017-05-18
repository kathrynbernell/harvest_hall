class FruitFarmersController < ApplicationController
  def index
    @fruit_farmers = FruitFarmer.all

    render("fruit_farmers/index.html.erb")
  end

  def show
    @fruit_farmer = FruitFarmer.find(params[:id])

    render("fruit_farmers/show.html.erb")
  end

  def new
    @fruit_farmer = FruitFarmer.new

    render("fruit_farmers/new.html.erb")
  end

  def create
    @fruit_farmer = FruitFarmer.new

    @fruit_farmer.fruit_id = params[:fruit_id]
    @fruit_farmer.farmer_id = params[:farmer_id]

    save_status = @fruit_farmer.save

    if save_status == true
      redirect_to("/fruit_farmers/#{@fruit_farmer.id}", :notice => "Fruit farmer created successfully.")
    else
      render("fruit_farmers/new.html.erb")
    end
  end

  def edit
    @fruit_farmer = FruitFarmer.find(params[:id])

    render("fruit_farmers/edit.html.erb")
  end

  def update
    @fruit_farmer = FruitFarmer.find(params[:id])

    @fruit_farmer.fruit_id = params[:fruit_id]
    @fruit_farmer.farmer_id = params[:farmer_id]

    save_status = @fruit_farmer.save

    if save_status == true
      redirect_to("/fruit_farmers/#{@fruit_farmer.id}", :notice => "Fruit farmer updated successfully.")
    else
      render("fruit_farmers/edit.html.erb")
    end
  end

  def destroy
    @fruit_farmer = FruitFarmer.find(params[:id])

    @fruit_farmer.destroy

    if URI(request.referer).path == "/fruit_farmers/#{@fruit_farmer.id}"
      redirect_to("/", :notice => "Fruit farmer deleted.")
    else
      redirect_to(:back, :notice => "Fruit farmer deleted.")
    end
  end
end

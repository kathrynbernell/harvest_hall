class FruitsController < ApplicationController
  def index
    @fruits = Fruit.all

    render("fruits/index.html.erb")
  end

  def show
    @fruit = Fruit.find(params[:id])

    render("fruits/show.html.erb")
  end

  def new
    @fruit = Fruit.new

    render("fruits/new.html.erb")
  end

  def create
    @fruit = Fruit.new

    @fruit.name = params[:name]
    @fruit.harvest_start_date = params[:harvest_start_date]
    @fruit.harvest_end_date = params[:harvest_end_date]

    save_status = @fruit.save

    if save_status == true
      redirect_to("/fruits/#{@fruit.id}", :notice => "Fruit created successfully.")
    else
      render("fruits/new.html.erb")
    end
  end

  def edit
    @fruit = Fruit.find(params[:id])

    render("fruits/edit.html.erb")
  end

  def update
    @fruit = Fruit.find(params[:id])

    @fruit.name = params[:name]
    @fruit.harvest_start_date = params[:harvest_start_date]
    @fruit.harvest_end_date = params[:harvest_end_date]

    save_status = @fruit.save

    if save_status == true
      redirect_to("/fruits/#{@fruit.id}", :notice => "Fruit updated successfully.")
    else
      render("fruits/edit.html.erb")
    end
  end

  def destroy
    @fruit = Fruit.find(params[:id])

    @fruit.destroy

    if URI(request.referer).path == "/fruits/#{@fruit.id}"
      redirect_to("/", :notice => "Fruit deleted.")
    else
      redirect_to(:back, :notice => "Fruit deleted.")
    end
  end
end

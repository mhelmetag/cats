class CatsController < ApplicationController
  def index
    @cats = Cat.all.to_a
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)

    if @cat.save
      redirect_to action: :index,
                  notice: 'Cat created...'
    else
      flash[:alert] = 'Cat not created...'
      render :new
    end
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :description, :picture)
  end
end

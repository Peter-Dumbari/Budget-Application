class CategoriesController < ApplicationController
  before_action :authenticate_user! # Ensure the user is authenticated

  def index
    @categories = current_user.categories # Fetch categories associated with the current user
  end

  def new
    @category = Category.new
    @icons = Icon.all
  end

  def create
    @category = current_user.categories.build(category_params)
    if @category.save
      redirect_to categories_path, notice: 'Category was successfully added.'
    else
      render :new
    end
  end

  def destroy
    @category = Category.find(params[:id])

    if @category.transaction_records.empty?
      @category.destroy
      redirect_to categories_url, notice: 'Category item was successfully deleted.'
    else
      redirect_to categories_url, alert: 'Category contains transactions and cannot be deleted.'
    end
  end

  def show
    @category = Category.find(params[:id])
    @transactions = @category.transaction_records
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon_id, :user_id)
  end
end

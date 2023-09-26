class CategoriesController < ApplicationController

    def index
        @categories = Category.all # Assuming you have a Category model
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
    
    private 

    def category_params
        params.require(:category).permit(:name, :icon,  :user_id)
    end
end

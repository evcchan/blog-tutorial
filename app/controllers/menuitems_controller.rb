class MenuitemsController < ApplicationController

def new
end

def create
 @menuitem = Menuitem.new(menuitem_params)
 @menuitem.save
 redirect_to @menuitem
end

def show
	@menuitem = Menuitem.find(params[:id])
end

def index
	@menuitems = Menuitem.all
end


private
	def menuitem_params
		params.require(:menuitem).permit(:title, :description, :price)
	end

end

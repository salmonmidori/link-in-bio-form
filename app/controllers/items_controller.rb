class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def show_form
    render({ :template => "item_templates/new_item_form" })
  end
  
  def add_item
    new_item = Item.new
    new_item.link_url = params["link_url"]
    new_item.link_description = params["link_description"]
    new_item.thumbnail_url = params["thumbnail_url"]
    new_item.save    
    redirect_to("/")
  end
end

class ContactsController < ApplicationController

  def main
  end
  
  def index
    @contacts = Contact.all
    respond_to do |f|
      f.html {redirect_to root_path}
      f.json {render :json => @contacts, :only => [:name, :email, :number, :imgUrl]}
    end
  end

end

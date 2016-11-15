class ContactsController < ApplicationController
  def contact_method
    @contact = Contact.first

    @contacts = Contact.all
    render 'contact.html.erb'
  end

  def index 
    @contacts = Contact.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @contact = Contact.new(first_name: params[:first_name], 
      last_name: params[:last_name], 
      email: params[:email], 
      phone_number: params[:phone_number])
    @contact.save
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
  end

  def destroy
  end
end

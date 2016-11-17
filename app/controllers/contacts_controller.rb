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
      middle_name: params[:middle_name], 
      last_name: params[:last_name], 
      email: params[:email], 
      bio: params[:bio], 
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
    @contact = Contact.find_by(id: params[:id])
    @contact.update(
      first_name: params[:first_name], 
      last_name: params[:last_name],
      middle_name: params[:middle_name], 
      bio: params[:bio], 
      email: params[:email], 
      phone_number: params[:phone_number]
    )
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.delete
    render 'destroy.html.erb'
  end
end

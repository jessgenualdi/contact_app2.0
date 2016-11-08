class ContactsController < ApplicationController
  def contact_method
    @contact = Contact.first

    @all_contacts = Contact.all
    render 'contact.html.erb'
  end
end

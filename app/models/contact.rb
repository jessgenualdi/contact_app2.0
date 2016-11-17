class Contact < ApplicationRecord
  def japanese_prefix
    new_number = "+81 " + phone_number
    new_number
  end

  def full_name
    full_name = first_name + " " + middle_name + " " + last_name
  end

  def pretty_created_at
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end
end

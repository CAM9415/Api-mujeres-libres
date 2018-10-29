class ContactsController < ApplicationController
  def messages
      contacts = Contact.all
      json_response(contacts)
    end
end

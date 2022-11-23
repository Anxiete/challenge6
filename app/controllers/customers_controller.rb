class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @ordered_customer = Customer.all.order(:full_name)
  end
  
  def missing_email
    @missing_email_cust = Customer.all.where(email_address: [nil, ''])
  end
end

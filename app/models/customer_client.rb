class CustomerClient < ApplicationRecord
  belongs_to :customer
  has_many :custmer_client_addresses


  def self.find_or_create_with_address( customer_id ,name, last_name, identifier, commune_id, street, number, address_detail ) 
    customer = CustomerClient.first_or_initialize({
      customer_id: customer_id,
      name: name,
      last_name: last_name,
      identifier: identifier
    })
    customer.save

    address = customer.custmer_client_addresses.first_or_initialize({
      commune_id: commune_id,
      street: street,
      number: number,
      address_detail: address_detail
    })

    address.save

    return customer
  end

end

class ReportsController < ApplicationController


  def warehouse

    @customers = Customer.all.order(name: :asc)

  end


end

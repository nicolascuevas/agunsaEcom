class ReportsController < ApplicationController


  def warehouse

    @customers = Customer.all.order(name: :asc)

  end

  def weekly_delivered_orders
    @customers = Customer.all.order(name: :asc)
  end


end

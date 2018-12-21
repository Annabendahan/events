class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
  event = Event.find(params[:event_id])
  order  = Order.create!(event_sku: event.sku, amount: event.price, state: 'pending', user: current_user)
  redirect_to new_order_payment_path(order)
  end

  def show
  @order = current_user.orders.where(state: 'paid').find(params[:id])
end


end

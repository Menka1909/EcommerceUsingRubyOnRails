class ShoppingController < ApplicationController
    def index
        @details_of_product = ProductDetail.all
    end

    def buyNowForm
        @product = ProductDetail.where("id = ?", params[:product_id])
    end

    def orderConfirm
        
        @customer_data = Customer.new(customer_post_params)
        @customer_data.save

        @Address_data = Address.new(address_post_params)
        @Address_data.customer_id = @customer_data.id
        @Address_data.save



        order_data = Order.new
        order_data.OrderNumber = rand(-10000000)
        current_time = DateTime.now
        order_data.DateOfOrder = current_time.strftime "%d/%m/%Y %H:%M"
        order_data.OrderStatus = "Shipped"
        order_data.BillingAddress = "Eletronic City Bangalore"
        add = params.require(:post).permit(:AddressLine1)
        addres = add['AddressLine1']
        order_data.ShippingAddress = addres
        order_data.customer_id = @customer_data.id
        puts order_data.OrderNumber, order_data.DateOfOrder, order_data.OrderStatus, order_data.BillingAddress, order_data.ShippingAddress, addres
        order_data.save

        @product_data = Product.new(product_post_params)
        @product_data.order_id = order_data.id
        @product_data.save

        # puts params.require(:post).permit(:Product_id)

        @orderConfirm_data = PlacedOrder.new(orderConfirm_post_params)
        @orderConfirm_data.save

        @PlacedOrder = PlacedOrder.all

    end

    



    private def customer_post_params
        params.require(:post).permit(:Name, :Phone, :Email, :AddressLine1)
    end

    private def address_post_params
        params.require(:post).permit(:Name, :Phone, :AddressLine1, :AddressLine2, :City, :State, :Country, :Pin)
    end

    private def product_post_params
        params.require(:post).permit(:Sku, :Mrp, :Quantity, :Discount, :NetPrice)
    end

    private def orderConfirm_post_params
        params.require(:post).permit(:Name, :Phone, :Email, :AddressLine1, :AddressLine2, :State, :City, :Country, :ProductName, :ProductDetail, :Sku, :Mrp, :Quantity, :Discount, :NetPrice)
    end
end

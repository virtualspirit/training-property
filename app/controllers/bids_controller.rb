class BidsController < ApplicationController
    def create
        @property = Property.find(params[:property_id])
        @property.with_lock do 
            @bid = @property.bids.new(bid_params)
            @bid.user_id = current_user.id
            
            if @bid.price > @property.auction_price
                @property.update_attribute(:auction_price, @bid.price)
                @bid.save
                redirect_to property_path(@property)
            else
                redirect_to property_path(@property)
            end
        end
    end

    private
        def bid_params
            params.require(:bid).permit(:price)
        end
end

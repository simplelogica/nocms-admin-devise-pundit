module NoCms
  module Admin
    module Users
      module UsersHelper
        def user_listing_item_classes item, current
          classes = []
          classes << 'current' if current == item
          classes
        end
      end
    end
  end
end

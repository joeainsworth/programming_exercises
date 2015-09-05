# In the last question Alyssa showed Alan this code which keeps track of items
# for a shopping cart application:

class InvoiceEntry
  attr_accessor :quantity
  attr_reader   :product_name

  def initialize(product_name, number_purchased)
    @quantity     = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    self.quantity = updated_count if updated_count >= 0
  end
end

# Alan noticed that this will fail when update_quantity is called.
# Since quantity is an instance variable, it must be accessed with the @quantity
# notation when setting it. One way to fix this to change attr_reader to
# attr_accessor.
# Is there anything wrong with fixing it this way?
#
# There is nothing incorrect as such. However, by allowing a setter method on
# the quantity variable instances of the class are able to change the value of
# the variable via bypassing the update_quantity method and the validation rule
# that checks the update quantity must be equal or greater than 0

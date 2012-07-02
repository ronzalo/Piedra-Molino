class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= AdminUser.new       
    case user.rol      
      when "admin"
        can :manage, :all
      when "venta"
        can :manage, [Client, Supplier, Product, Category, SalesInvoice, SalesWaybill, PurchaseInvoice, PurchaseWaybill]  
      when "bodega"
        can :read, [Product, Category]  
      end
  end 
end

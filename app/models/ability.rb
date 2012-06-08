class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= AdminUser.new       
    case user.role      
      when "admin"
        can :manage, :all
      when "venta"
        can :manage, [Client, Supplier, Product, Family, Category]  
      when "bodega"
        can :read, [Product, Category, Family]  
      end
  end 
end

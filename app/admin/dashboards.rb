ActiveAdmin::Dashboards.build do
  
  section "Ultimos Productos" do
    table_for Product.order("created_at desc").limit(5) do
      column "Nombre", :descripcion do |product|
        link_to product.descripcion, [:admin, product]
      end
      column "Creado el", :created_at
    end
    strong { link_to "Ver todos los Productos", admin_products_path }
  end
  
  section "Ultimas Categorias" do
     ul do
         Category.all.collect do |category|
           li link_to(category.nombre, admin_category_path(category))           
         end
     end        
  end
  
  
  section "Productos con bajo stock" do
    table_for Product.where('stock_real < stock_real') do |t|
      column "Nombre", :descripcion do |product|
        link_to product.descripcion, [:admin, product], :class => "critico"
      end
      column "Comprar Stock", :stock_real do |product|
        b (product.stock_minimo - product.stock_real)
      end
    end
  end
  
  # Define your dashboard sections here. Each block will be
  # rendered on the dashboard in the context of the view. So just
  # return the content which you would like to display.
  
  # == Simple Dashboard Section
  # Here is an example of a simple dashboard section
  #
  #   section "Recent Posts" do
  #     ul do
  #       Post.recent(5).collect do |post|
  #         li link_to(post.title, admin_post_path(post))
  #       end
  #     end
  #   end
  
  # == Render Partial Section
  # The block is rendered within the context of the view, so you can
  # easily render a partial rather than build content in ruby.
  #
  #   section "Recent Posts" do
  #     div do
  #       render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
  #     end
  #   end
  
  # == Section Ordering
  # The dashboard sections are ordered by a given priority from top left to
  # bottom right. The default priority is 10. By giving a section numerically lower
  # priority it will be sorted higher. For example:
  #
  #   section "Recent Posts", :priority => 10
  #   section "Recent User", :priority => 1
  #
  # Will render the "Recent Users" then the "Recent Posts" sections on the dashboard.
  
  # == Conditionally Display
  # Provide a method name or Proc object to conditionally render a section at run time.
  #
  # section "Membership Summary", :if => :memberships_enabled?
  # section "Membership Summary", :if => Proc.new { current_admin_user.account.memberships.any? }

end

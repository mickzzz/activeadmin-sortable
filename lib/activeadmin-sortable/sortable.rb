module ActiveAdmin
  module JquerySortable
    
    private
    
    def jquery_sortable
      orderable
      config.sort_order = "position_asc"
      config.paginate = false
      sort_action
    end
    
    def sort_action
      member_action :sort, :method => :post do
        resource.move_to!(params[:position].to_i)
        head 200
      end
    end
    
    def orderable
      if defined? ::Mongoid::Orderable
        config.resource_class.send(:include, ActiveAdmin::ResourceClass)        
      else
        raise "Could not load Mongoid::Orderable. Try including it in your gemfile."
      end
    end    
    
  end
end

::ActiveAdmin::ResourceDSL.send(:include, ::ActiveAdmin::JquerySortable)
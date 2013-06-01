module ActiveAdmin
  module Views
    module Handle
      
      HANDLE = '&#x2195;'
      
      private

      def sortable_column
        column '' do |resource|
          sort_url = "#{resource_path(resource)}/sort"
          content_tag :span, HANDLE.html_safe, :class => 'handle', 'data-sort-url' => sort_url
        end
      end
      
    end
  end
end

::ActiveAdmin::Views::IndexAsTable::IndexTableFor.send(:include, ::ActiveAdmin::Views::Handle)
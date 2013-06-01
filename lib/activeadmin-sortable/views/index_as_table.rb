module ActiveAdmin
  module Views
    class IndexAsTable < ActiveAdmin::Component
      
      def build(page_presenter, collection)
        table_options = {
          :id => "index_table_#{active_admin_config.resource_name.plural}",
          :sortable => true,
          :class => "index_table index",
          :i18n => active_admin_config.resource_class,
          :paginator => page_presenter[:paginator] != false
        }
        table_for collection, table_options do |t|
          table_config_block = page_presenter.block || default_table
          t.send(:sortable_column) if (resource_class.send(:jquery_sortable) rescue false)
          instance_exec(t, &table_config_block)
        end
      end
      
    end
  end
end
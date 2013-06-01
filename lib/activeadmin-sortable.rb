require "activeadmin-sortable/assets/engine"
require "activeadmin-sortable/sortable"

if defined? ::Mongoid
  require "activeadmin-sortable/orm/mongoid"
elsif defined? ::ActiveRecord
  require "activeadmin-sortable/orm/active_record"
else
  raise "ORM not supported yet!!!"
end

require "activeadmin-sortable/views/index_as_table"
require "activeadmin-sortable/views/handle"
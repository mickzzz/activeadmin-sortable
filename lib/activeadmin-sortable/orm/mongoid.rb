module ActiveAdmin
  module ResourceClass
    extend ActiveSupport::Concern
    included do
      include ::Mongoid::Orderable
      orderable
      class << self        
        def jquery_sortable
          true
        end
      end
    end
  end
end
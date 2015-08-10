module Octopus
  module HasAndBelongsToManyAssociation
    def self.included(base)
      base.sharded_methods :insert_record
    end
  end
end

ActiveRecord::Associations::HasManyAssociation.send(:include, Octopus::HasAndBelongsToManyAssociation)

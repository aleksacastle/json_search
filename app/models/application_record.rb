class ApplicationModel < ActiveModel::Model
  include ActiveModel::Serialization::JSON
  # self.abstract_class = true
end

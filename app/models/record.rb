
class Record
  include ActiveModel::Serializers::JSON
  include ActiveModel::Conversion

  attr_accessor :name, :type, :designed_by

   def initialize(attributes = {})
     attributes.each do |name, value|
       send("#{name}=".downcase, value)
     end
  end

  def persisted?
    false
  end

  # logic of ActiveRecord module
  # def new_record?
  #   if true
  #     records.create
  #   else
  #     records.update
  #   end
  # end
end

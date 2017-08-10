class Record < ApplicationModel
  attr_accessor :name, :type, :designed_by

  def attributes=(hash)
    hash.each do |key, value|
      send("#{key}=", value)
    end
  end

  def attributes
    { 'Name' => nil,
      'Type' => nil,
      'Designed by' => nil }
   end

  # logic of ActiveRecord module
  def new_record?
    if true
      records.create
    else
      records.update
    end
  end
end

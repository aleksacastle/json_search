class Record
  include ActiveModel::Serializers::JSON
  include ActiveModel::Conversion

  attr_accessor :name, :type, :designed_by

   def initialize(attributes = {})
     attributes.each do |name, value|
       send("#{name}=".downcase.sub(" ", "_"), value)
     end
  end

  def persisted?
    false
  end

  private

  def parse_json
    # read json file
    json_data = File.read('app/data/data.json')
    # parse json file will return array
    @array_data = JSON.parse(json_data)
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

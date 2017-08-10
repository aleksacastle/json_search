class RecordsController < ApplicationController
  befor_action :parse_json
  def new
    @record = Record.new
    array_data.each do |arr|
      @record.from_json(arr)
    end
  end

  private

  def parse_json
    # read json file
    json_data = File.read('app/data/data.json')
    # parse json file will return array
    @array_data = JSON.parse(json_data).count
  end
end

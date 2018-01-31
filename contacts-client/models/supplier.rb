class Supplier
  attr_accessor :full_name, :id
  def initialize(input_options)
    @supplier_id = input_options["supplier_id"]
    @full_name = input_options["full_name"]
  end

  def self.convert_hashs(supplier_hashs)
    supplier_collection = []

    supplier_hashs.each do |supplier_hash|
      supplier_collection << Supplier.new(supplier_hash)
    end

    supplier_collection
  end
end
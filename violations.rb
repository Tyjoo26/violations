require 'csv'



class Analysis



  def initialize(csv)
    open_file(csv)
  end

  def open_file(file)
    @transactions = []
    csv = CSV.foreach file,
    headers: true, header_converters: :symbol do |row|
      @transactions << Transaction.new(row, self)
    end
  end


end

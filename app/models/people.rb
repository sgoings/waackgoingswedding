class People < ActiveRecord::Base

  def to_param
    address
  end

  def self.search_by_address(address)
    if address && !address.empty?
      people = People.search(:address => address.downcase)
      if people.length == 1
        return people.first
      end

      return nil
    end
  end

end

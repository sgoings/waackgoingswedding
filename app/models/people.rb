class People < ActiveRecord::Base

  def to_param
    address
  end

  def self.search_by_address(address)
    if address && !address.empty?
      people = find(:all, :conditions => ['lower(address) LIKE ?', "%#{address.downcase}%"])
      if people.length == 1
        return people
      end
      return nil

    end
  end

end

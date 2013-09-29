class Person < ActiveRecord::Base
  validates :name, presence: true

  def self.search(search)
      if search
        find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
      else
        find(:all)
      end
    end
end

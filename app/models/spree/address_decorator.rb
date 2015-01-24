Spree::Address.class_eval do
  
    def deliverable
      zip = self.zipcode
      unless Spree::Areamanager.exists?(zipcode: zip)
        errors.add(:zipcode, "is not deliverable at this time, visit FAQ for list of zipcodes 
                that are deliverable.")
      end
    end
    validate  :deliverable

end
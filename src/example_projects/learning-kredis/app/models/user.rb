class User < ApplicationRecord
  # The idea here is to hold on redis a list of unique elements, 
  # Kredis is smart enought to update the elements if you prepend, 
  # it drops aditional elements on the bottom of the list, since it
  # is limited to 5
  
  kredis_unique_list :recent_searches, limit: 5
end

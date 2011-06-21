module AidsInfo
  class Client
    module API
     def search(drug)
      get("DrugsNew/drug.aspx?displayxml=true&name=#{drug.to_s}")
     end
    end
  end
end

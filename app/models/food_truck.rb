class FoodTruck < ActiveRecord::Base
  def infographic
    string = """
    <div style='height:100px;width:200px;'>
    #{self.name}<br>
    #{self.phone_number + '<br>' if self.phone_number}
    #{self.website}
    </div>
    """.html_safe
    string.gsub("\n", "").html_safe
  end
end

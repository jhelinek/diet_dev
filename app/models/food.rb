class Food < ActiveRecord::Base
  attr_accessible :added_sugars, :alcohol, :calories, :name, :dark_green_vegetables, :dry_beans_peas, :factor, :food_id, :fruits, :grains, :increment, :meats, :milk, :multiplier, :oils, :orange_vegetables, :other_vegetables, :portion_amount, :portion_default, :portion_display_name, :saturated_fats, :solid_fats, :soy, :starchy_vegetables, :vegetables, :whole_grains
  
  belongs_to :meal
  
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
  
end

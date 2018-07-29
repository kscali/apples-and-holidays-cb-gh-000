require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
        holiday.each do |day, supplies|
          if day == :christmas || day == :new_years
            supplies << supply
        end  
      end 
    end 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
        holiday.each do |day, supplies|
          if day == :memorial_day
            supplies << supply
        end  
      end 
    end 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |season_s, holiday|
    holiday_hash[season_s][holiday_name] = supply_array
  end
end


def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].map do |holiday, supplies|
    supplies
  end.flatten
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
     puts "#{season.to_s.capitalize}:"
     holiday.each do |day, supplies|
       puts "#{day.to_s.capitalize}: #{day.to_s.values.capitalize}"
      end 
  end 
 
       
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end








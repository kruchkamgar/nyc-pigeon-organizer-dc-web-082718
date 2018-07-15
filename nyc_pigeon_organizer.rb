require 'pry'

def nyc_pigeon_organizer(data)
pigeon_list = {}

  data.each { | facet, h_values |
    h_values.each { | value, a_names |
      a_names.each { | name |
        if pigeon_list[name] == nil then pigeon_list[name] = {} end
        # pigeon_list[name].merge!({facet => value})
        if pigeon_list[name][facet] == nil then pigeon_list[name][facet] = [] end
        pigeon_list[name][facet] << value.to_s
      }
    }
  }
  # binding.pry
  pigeon_list
end

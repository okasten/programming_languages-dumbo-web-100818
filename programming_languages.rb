require "pry"

def reformat_languages(languages)
  new_hash = {}
  current_style = []
  languages.each do |style, language|
    current_style << style
    
    language.each do |type|
      
      if type[0] == :javascript
        current_style = [:oo, :functional]
        #binding.pry
      elsif type[0] == :python
        current_style = [:oo]
      end 

      new_hash[type[0]] = {type[1].keys.join.to_sym => type[1].values.join, :style => current_style}
    end 
    current_style = []
  end 
  new_hash
end

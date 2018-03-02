require "StringSummation/version"

module StringSummation
  def  self.add_string(value)
   	if value.gsub(/[^0-9-]/, '').split('').include?('-')
      raise  "Negative Number is not allowed"
    else
      result = value.to_s.each_char.map {|c| c.to_i }.reduce(:+) || 0
    end
    return result
  end
end

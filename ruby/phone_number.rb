class PhoneNumber

  def self.clean(string)
    numbers = string.gsub(/\D/,"")
    if numbers.length == 11 && numbers[0] == "1"
      return numbers[1..-1]
    elsif  numbers.length < 11 && numbers[0] != "1" && numbers[3].to_i > 1
      return numbers
    end
    nil
  end
end

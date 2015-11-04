require "mynumber/version"

class MyNumber
  def self.corporate_number?(n)
    return false unless n.to_s =~ /^\d{13}$/

    digits = n.to_s.chars.map(&:to_i)
    check_digit = digits.pop
    sum = digits.map.with_index do |p, idx|
      # nが奇数のとき 1, nが偶数のとき 2
      q = (idx + 1).odd? ? 1 : 2
      p * q
    end.inject(0, :+)

    check_digit == (9 - sum % 9)
  end

  def self.individual_number?(n)
    return false unless n.to_s =~ /^\d{12}$/

    digits = n.to_s.chars.map(&:to_i)
    check_digit = digits.pop
    remainder = digits.map.with_index do |p, idx|
      idx = 11 - idx
      # 1<=n<=6のとき n+1, 7<=ｎ<=11のとき n-5
      q = (idx <= 6) ? idx + 1 : idx - 5
      p * q
    end.inject(0, :+) % 11

    case remainder
    when 0, 1
      check_digit == 0
    else
      check_digit == (11 - remainder)
    end
  end
end

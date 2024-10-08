def is_multiple_of_3_or_5?(current_number)
  current_number % 3 == 0 || current_number % 5 == 0
end

def sum_of_3_or_5_multiples(final_number)
  unless final_number.is_a?(Integer) && final_number >= 0
    return 'Yo ! Je ne prends que les entiers naturels. TG.'
  end

  final_sum = 0
  (0...final_number).each do |current_number|
    if is_multiple_of_3_or_5?(current_number)
      final_sum += current_number
    end
  end
  return final_sum
end

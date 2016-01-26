puts "Whats your total?"
total = gets.chomp.delete('$').to_f
total_10 = sprintf('%.2f', total*0.1)
total_15 = sprintf('%.2f', total*0.15)
total_20 = sprintf('%.2f', total*0.2)


puts "How much tip do you want to pay, 10% ($#{total_10}) 15% ($ #{total_15}) or 20% ($ #{total_20})?"
tip = gets.chomp.delete('%').to_f
tip_1 = tip / 100
bill = total * tip_1
bill_total = total + bill
bill_total_dec = ('%.2f' % bill_total).to_f
puts "Your grand total is $ #{bill_total_dec}. How do you want to split it?"
split = gets.chomp.to_f
my_share = bill_total_dec / split
my_share_decimal = ('%.2f' % my_share).to_f
if my_share_decimal * split != bill_total_dec
  final_tot = bill_total_dec - (my_share_decimal * split)
  final_tot_dec = ('%.2f' % final_tot).to_f
your_share = (my_share_decimal + final_tot_dec).to_f
  # puts your_share
your_share_not =
    if your_share == 0
      ""
    else
      "| You Feel Generous so,
        |   Your Share should be #{your_share}"
    end
end

# puts "Your share is $ #{my_share_decimal}."

puts " Your Total is $ #{bill_total_dec}
       Your Tip is     #{tip.to_i} %
       Number of guests= #{split.to_i}
       Your Share should be #{my_share_decimal}
      #{your_share_not}"

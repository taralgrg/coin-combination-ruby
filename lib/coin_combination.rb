class Fixnum
   define_method(:coin_combination) do
     quarters=0
     dimes=0
     nickels=0
     pennies=0

     total_coins=self

   until total_coins.==(0)

    if total_coins.>=25
      quarters= total_coins./(25)
      total_coins=total_coins.%(25)

    elsif total_coins.>=10
      dimes= total_coins./(10)
      total_coins=total_coins.%(10)

    elsif total_coins.>=(5)
      nickels= total_coins./(5)
      total_coins=total_coins.%(5)

    else pennies=total_coins
      total_coins=0

    end
   end
   return [quarters,dimes,nickels,pennies]
 end
end

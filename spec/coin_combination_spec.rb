require('rspec')
  require('coin_combination')

 describe('Change for cents') do
   it("Change for cents") do
    expect((30).coin_combination()).to(eq([1,0,1,0]))
  end

  # describe('rock') do
  #   it("Rock, Paper or Scissor") do
  #    expect("scissor".coin_combination()).to(eq("Tie"))
  # end
 end

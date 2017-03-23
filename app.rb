require('sinatra')
  require('sinatra/reloader')
  require('./lib/coin_combination')
  also_reload('lib/**/*.rb')

  get('/') do
    erb(:index)
  end

  get('/amount_input') do
    @amount_input = params.fetch('amount_input').to_i.coin_combination()
    erb(:amount_input)
  end

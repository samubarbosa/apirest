describe('GET / Desafio Api Rest') do
  it('Validando paises e codigos') do
    @all = Apis.get('/all')

    @result = @all.parsed_response['RestResponse']['result']
    @message = @all.parsed_response['RestResponse']['messages']
    puts @all.response.code

    @country = [] # instanciando em variavel array
    @alpha2 = [] # instanciando em variavel array
    @alpha3 = [] # instanciando em variavel array

    @result.each do |item|
      @country.push(item['name']) ## alpha2_code
      @alpha2.push(item['alpha2_code'])
      @alpha3.push(item['alpha3_code'])
    end
    puts @country.size
    
    # trazendo todos os arrays para string
    # @country.each do |item|
    #   puts item.to_s
    # end

    # validando se q autnidade de pais encontrando é igual a 249
    expect(@country.size).to eql 249
    # validando um nome de pais
    expect(@country).to include 'Solomon Islands'
    # validando um alpha2_code
    expect(@alpha2).to include 'SB'
    # validando um alpha3_code
    expect(@alpha3).to include 'SLB'
  end
end

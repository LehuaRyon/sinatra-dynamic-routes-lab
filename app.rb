require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
    # params[:name].reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}.to_s"
    # (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    string = ''
    params[:number].to_i.times do
      string += params[:phrase]
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    string
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case params[:operation]
    when 'add'
      y = (num1 + num2).to_s
    when 'subtract'
      y = (num1 - num2).to_s
    when 'multiply'
      y = (num1 * num2).to_s
    when 'divide'
      y = (num1 / num2).to_s
    end
  end

end
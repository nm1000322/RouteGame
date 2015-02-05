require 'bundler'
Bundler.require
set :public_folder, "public"
people = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 42]
evenarr = [0, 2, 4, 6, 8, 10, 42]
oddarr = [3, 5, 7, 9]
get '/guess/:object' do
  number = people.sample
  player = params[:object].to_i
  if player == number.to_i
    "You Win! The answer was #{player}"
  else
    "You lose! The answer was #{number}, not #{player}"
    end
end
get '/guess/even/:object' do
  number = evenarr.sample
  player = params[:object].to_i
  if player == number.to_i
    "You Win! The answer was #{player}"
  else
    "You lose! The answer was #{number}, not #{player}"
  end
end
get '/guess/odd/:object' do
  number = oddarr.sample
  player = params[:object].to_i
  if player == number.to_i
    "You Win! The answer was #{player}"
  else
    "You lose! The answer was #{number}, not #{player}"
  end
end





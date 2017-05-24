get '/' do
  redirect '/users'
end

get '/users' do
  @users = User.all

  erb :"/users/index"
end

get '/users/new' do
  @skills = Skill.all
  erb :"/users/new"
end


post '/users' do
  skill_records = params[:skill].map { |skill_id| Skill.find(skill_id) }
  user = User.create(params[:user])

  # binding.pry
  user.skills << skill_records

  redirect "/users/#{user.id}"
end


get '/users/:id' do
  @user = User.find(params[:id])
  @skills = @user.skills.map { |skill| skill.name}
   # binding.pry
  erb :'users/show'
end


get '/users/:id/edit' do
  @user = User.find(params[:id])

  erb :'/users/edit'
end


put '/users/:id' do
  user = User.find(params[:id])
  user.update(params[:user])
  redirect "/users/#{user.id}"
end





delete '/users/:id' do
  user = User.find(params[:id])
  user.destroy

  redirect '/users'
end


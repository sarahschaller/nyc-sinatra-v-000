class LandmarksController < ApplicationController

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  post '/landmarks' do
    @landmark = Landmark.create(params[:landmark])
    @landmark.save

    erb :'landmarks/:id'
  end

  get '/landmarks/:id' do

    erb :'landmarks/show'
  end

  get '/landmarks/:id/edit' do

    erb :'/landmarks/edit'
  end

  patch '/landmarks/:id' do

    redirect to "/landmarks/#{landmark.id}"
  end


end

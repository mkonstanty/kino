class Admin::MoviesController < ApplicationController


  active_scaffold :movie do |config|
  config.columns=[:name, :description, :image]
  columns[:length].label = "Czas (min)"
  show.columns=[:name, :description, :actors, :length, :image] #pola wyswietlone po kliknieciu w ‘show’
  update.columns=[:name, :description, :length, :roles, :image] #pola wyswietlone po kliknieciu w ‘edit’
  create.columns=[:name, :description, :roles, :length, :image] #pola, ktore uzupelnimy tworzac nowy rekord
end

end

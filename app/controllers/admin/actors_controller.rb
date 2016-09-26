class Admin::ActorsController < ApplicationController

  active_scaffold :actor do |config|
    config.columns=[:name, :biography, :image]
    show.columns=[:name, :biography, :movies, :image] #pola wyswietlone po kliknieciu w ‘show’
    update.columns=[:name, :biography, :image] #pola wyswietlone po kliknieciu w ‘edit’
    create.columns=[:name, :biography, :image] #pola, ktore uzupelnimy tworzac nowy rekord
  end

  
end

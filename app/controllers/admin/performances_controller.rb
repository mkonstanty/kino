class Admin::PerformancesController < ApplicationController
  active_scaffold :performance  do |config|
    config.columns=[:started_at, :movie]
    config.columns[:movie].ui_type = :select 
  end
end

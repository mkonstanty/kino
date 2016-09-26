class ActorsController < ApplicationController
  # GET /actors
  # GET /actors.xml
  def index
    @actors = Actor.find(:all)
    @menu = 2
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @actors }
    end
  end

  # GET /actors/1
  # GET /actors/1.xml
  def show
    @actor = Actor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @actor }
    end
  end


  def new
    @actor = Actor.new
    @movies = Movie.find(:all)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @actor }
    end
  end

  def destroy
	  @actors = Actor.find(params[:id])
	  @actors.destroy

	  respond_to do |format|
		  format.html { redirect_to(actors_url) }
		  format.xml { head :ok }
  	  end
  end

  def create
    @actor = Actor.new(params[:actor])

    respond_to do |format|
      if @actor.save
        flash[:notice] = 'Actor was successfully created.'
        format.html { redirect_to(@actor) }
        format.xml  { render :xml => @actor, :status => :created, :location => @actor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @actor.errors, :status => :unprocessable_entity }
      end
    end
  end








end

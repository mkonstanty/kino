class MoviesController < ApplicationController
  # GET /movies
  # GET /movies.xml
   
  def index
    @movies = Movie.find(:all)
    @menu = 4
   end

  def show
    @movie = Movie.find(params[:id])
  end

def new
    @movie = Movie.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @movie }
    end
  end

  def create
    @movie = Movie.new(params[:movie])

    respond_to do |format|
      if @movie.save
        flash[:notice] = 'Movie was successfully created.'
        format.html { redirect_to(@movie) }
        format.xml  { render :xml => @movie, :status => :created, :location => @movie }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @movie.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
	      @movie = Movie.find(params[:id])
	          @movie.destroy

		      respond_to do |format|
			            format.html { redirect_to(movies_url) }
				          format.xml  { head :ok }
					      end
		        end

  
end

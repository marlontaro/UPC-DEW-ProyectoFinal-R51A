class MusicalStylesController < ApplicationController
  # GET /musical_styles
  # GET /musical_styles.json
  def index
    @musical_styles = MusicalStyle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @musical_styles }
    end
  end

  # GET /musical_styles/1
  # GET /musical_styles/1.json
  def show
    @musical_style = MusicalStyle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @musical_style }
    end
  end

  # GET /musical_styles/new
  # GET /musical_styles/new.json
  def new
    @musical_style = MusicalStyle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @musical_style }
    end
  end

  # GET /musical_styles/1/edit
  def edit
    @musical_style = MusicalStyle.find(params[:id])
  end

  # POST /musical_styles
  # POST /musical_styles.json
  def create
    @musical_style = MusicalStyle.new(params[:musical_style])

    respond_to do |format|
      if @musical_style.save
        format.html { redirect_to @musical_style, notice: 'Musical style was successfully created.' }
        format.json { render json: @musical_style, status: :created, location: @musical_style }
      else
        format.html { render action: "new" }
        format.json { render json: @musical_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /musical_styles/1
  # PUT /musical_styles/1.json
  def update
    @musical_style = MusicalStyle.find(params[:id])

    respond_to do |format|
      if @musical_style.update_attributes(params[:musical_style])
        format.html { redirect_to @musical_style, notice: 'Musical style was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @musical_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musical_styles/1
  # DELETE /musical_styles/1.json
  def destroy
    @musical_style = MusicalStyle.find(params[:id])
    @musical_style.destroy

    respond_to do |format|
      format.html { redirect_to musical_styles_url }
      format.json { head :no_content }
    end
  end
end

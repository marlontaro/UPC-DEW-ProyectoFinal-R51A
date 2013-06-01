class MusicalGroupsController < ApplicationController
  # GET /musical_groups
  # GET /musical_groups.json
  def index
    @musical_groups = MusicalGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @musical_groups }
    end
  end

  # GET /musical_groups/1
  # GET /musical_groups/1.json
  def show
    @musical_group = MusicalGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @musical_group }
    end
  end

  # GET /musical_groups/new
  # GET /musical_groups/new.json
  def new
    @musical_group = MusicalGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @musical_group }
    end
  end

  # GET /musical_groups/1/edit
  def edit
    @musical_group = MusicalGroup.find(params[:id])
  end

  # POST /musical_groups
  # POST /musical_groups.json
  def create
    @musical_group = MusicalGroup.new(params[:musical_group])

    respond_to do |format|
      if @musical_group.save
        format.html { redirect_to @musical_group, notice: 'Musical group was successfully created.' }
        format.json { render json: @musical_group, status: :created, location: @musical_group }
      else
        format.html { render action: "new" }
        format.json { render json: @musical_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /musical_groups/1
  # PUT /musical_groups/1.json
  def update
    @musical_group = MusicalGroup.find(params[:id])

    respond_to do |format|
      if @musical_group.update_attributes(params[:musical_group])
        format.html { redirect_to @musical_group, notice: 'Musical group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @musical_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musical_groups/1
  # DELETE /musical_groups/1.json
  def destroy
    @musical_group = MusicalGroup.find(params[:id])
    @musical_group.destroy

    respond_to do |format|
      format.html { redirect_to musical_groups_url }
      format.json { head :no_content }
    end
  end
end

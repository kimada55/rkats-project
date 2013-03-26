class GroupsValsController < ApplicationController
  # GET /groups_vals
  # GET /groups_vals.json
  def index
    @groups_vals = GroupsVal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @groups_vals }
    end
  end

  # GET /groups_vals/1
  # GET /groups_vals/1.json
  def show
    @groups_val = GroupsVal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @groups_val }
    end
  end

  # GET /groups_vals/new
  # GET /groups_vals/new.json
  def new
    @groups_val = GroupsVal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @groups_val }
    end
  end

  # GET /groups_vals/1/edit
  def edit
    @groups_val = GroupsVal.find(params[:id])
  end

  # POST /groups_vals
  # POST /groups_vals.json
  def create
    @groups_val = GroupsVal.new(params[:groups_val])

    respond_to do |format|
      if @groups_val.save
        format.html { redirect_to @groups_val, notice: 'Groups val was successfully created.' }
        format.json { render json: @groups_val, status: :created, location: @groups_val }
      else
        format.html { render action: "new" }
        format.json { render json: @groups_val.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /groups_vals/1
  # PUT /groups_vals/1.json
  def update
    @groups_val = GroupsVal.find(params[:id])

    respond_to do |format|
      if @groups_val.update_attributes(params[:groups_val])
        format.html { redirect_to @groups_val, notice: 'Groups val was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @groups_val.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups_vals/1
  # DELETE /groups_vals/1.json
  def destroy
    @groups_val = GroupsVal.find(params[:id])
    @groups_val.destroy

    respond_to do |format|
      format.html { redirect_to groups_vals_url }
      format.json { head :no_content }
    end
  end
end

class GroupValsController < ApplicationController
  # GET /group_vals
  # GET /group_vals.json
  def index
    @group_vals = GroupVal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @group_vals }
    end
  end

  # GET /group_vals/1
  # GET /group_vals/1.json
  def show
    @group_val = GroupVal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @group_val }
    end
  end

  # GET /group_vals/new
  # GET /group_vals/new.json
  def new
    @group_val = GroupVal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @group_val }
    end
  end

  # GET /group_vals/1/edit
  def edit
    @group_val = GroupVal.find(params[:id])
  end

  # POST /group_vals
  # POST /group_vals.json
  def create
    @group_val = GroupVal.new(params[:group_val])

    respond_to do |format|
      if @group_val.save
        format.html { redirect_to @group_val, notice: 'Group val was successfully created.' }
        format.json { render json: @group_val, status: :created, location: @group_val }
      else
        format.html { render action: "new" }
        format.json { render json: @group_val.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /group_vals/1
  # PUT /group_vals/1.json
  def update
    @group_val = GroupVal.find(params[:id])

    respond_to do |format|
      if @group_val.update_attributes(params[:group_val])
        format.html { redirect_to @group_val, notice: 'Group val was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @group_val.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_vals/1
  # DELETE /group_vals/1.json
  def destroy
    @group_val = GroupVal.find(params[:id])
    @group_val.destroy

    respond_to do |format|
      format.html { redirect_to group_vals_url }
      format.json { head :no_content }
    end
  end
end

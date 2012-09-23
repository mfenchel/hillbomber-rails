class TrailsController < ApplicationController
  # GET /trails
  # GET /trails.json
  respond_to :json

  def index
    @user = User.find_by_uid(params[:uid])
    if @user.nil?
      format.json { render json: "User was Nil", status: :unprocessable_entity }
      return
    else

      @trails = Trail.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @trails }
      end
    end
  end

  # GET /trails/1
  # GET /trails/1.json
  def show
    @trail = Trail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trail }
    end
  end

  # GET /trails/new
  # GET /trails/new.json
  def new
    @trail = Trail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trail }
    end
  end

  # GET /trails/1/edit
  def edit
    @trail = Trail.find(params[:id])
  end

  # POST /trails
  # POST /trails.json
  def create
    @user = User.find_by_uid(params[:uid])
    if @user.nil?
      format.json { render json: "User was Nil", status: :unprocessable_entity }
    else

      @s_lat = params[:s_lat]
      @s_long = params[:s_long]
      @e_lat = params[:e_lat]
      @e_long = params[:e_long]
      
      @title = params[:title]
      @difficulty = params[:difficulty]

      @trail = Trail.new(s_lat: @s_lat, s_long: @s_long, e_lat: @e_lat, e_long: @e_long,
                          title: @title, difficulty: @difficulty, creator: @user.name, user_id: @user.id)

      respond_to do |format|
        if @trail.save
          format.html { redirect_to @trail, notice: 'Trail was successfully created.' }
          format.json { render json: @trail, status: :created }
        else
          format.html { render action: "new" }
          format.json { render json: @trail.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PUT /trails/1
  # PUT /trails/1.json
  def update
    @trail = Trail.find(params[:id])

    respond_to do |format|
      if @trail.update_attributes(params[:trail])
        format.html { redirect_to @trail, notice: 'Trail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trails/1
  # DELETE /trails/1.json
  def destroy
    @trail = Trail.find(params[:id])
    @trail.destroy

    respond_to do |format|
      format.html { redirect_to trails_url }
      format.json { head :no_content }
    end
  end
end

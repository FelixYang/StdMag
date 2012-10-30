class StdInfosController < ApplicationController
  # GET /std_infos
  # GET /std_infos.json
  def index
    @std_infos = StdInfo.page(params[:page]).per(6)


    # respond_to do |format|
      # format.html # index.html.erb
      # format.json { render json: @std_infos }
    # end
  end

  # GET /std_infos/1
  # GET /std_infos/1.json
  def show
    @std_info = StdInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @std_info }
    end
  end

  # GET /std_infos/new
  # GET /std_infos/new.json
  def new
    @std_info = StdInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @std_info }
    end
  end

  # GET /std_infos/1/edit
  def edit
    @std_info = StdInfo.find(params[:id])
  end

  # POST /std_infos
  # POST /std_infos.json
  def create
    @std_info = StdInfo.new(params[:std_info])
    
    respond_to do |format|
      if @std_info.save
        format.html { redirect_to @std_info, notice: 'Std info was successfully created.' }
        format.json { render json: @std_info, status: :created, location: @std_info }
      else
        format.html { render action: "new" }
        format.json { render json: @std_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /std_infos/1
  # PUT /std_infos/1.json
  def update
    @std_info = StdInfo.find(params[:id])

    respond_to do |format|
      if @std_info.update_attributes(params[:std_info])
        format.html { redirect_to @std_info, notice: 'Std info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @std_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /std_infos/1
  # DELETE /std_infos/1.json
  def destroy
    @std_info = StdInfo.find(params[:id])
    @std_info.destroy

    respond_to do |format|
      format.html { redirect_to std_infos_url }
      format.json { head :no_content }
    end
  end
  # 
end

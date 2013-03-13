class Payment2sController < ApplicationController
  # GET /payment2s
  # GET /payment2s.json
  def index
    @payment2s = Payment2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @payment2s }
    end
  end

  # GET /payment2s/1
  # GET /payment2s/1.json
  def show
    @payment2 = Payment2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @payment2 }
    end
  end

  # GET /payment2s/new
  # GET /payment2s/new.json
  def new
    @payment2 = Payment2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @payment2 }
    end
  end

  # GET /payment2s/1/edit
  def edit
    @payment2 = Payment2.find(params[:id])
  end

  # POST /payment2s
  # POST /payment2s.json
  def create
    @payment2 = Payment2.new(params[:payment2])

    respond_to do |format|
      if @payment2.save
        format.html { redirect_to @payment2, notice: 'Payment2 was successfully created.' }
        format.json { render json: @payment2, status: :created, location: @payment2 }
      else
        format.html { render action: "new" }
        format.json { render json: @payment2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /payment2s/1
  # PUT /payment2s/1.json
  def update
    @payment2 = Payment2.find(params[:id])

    respond_to do |format|
      if @payment2.update_attributes(params[:payment2])
        format.html { redirect_to @payment2, notice: 'Payment2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @payment2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment2s/1
  # DELETE /payment2s/1.json
  def destroy
    @payment2 = Payment2.find(params[:id])
    @payment2.destroy

    respond_to do |format|
      format.html { redirect_to payment2s_url }
      format.json { head :no_content }
    end
  end
end

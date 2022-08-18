# frozen_string_literal: true

class AcesController < ApplicationController
  before_action :set_ace, only: %i[show edit update destroy]

  # GET /aces or /aces.json
  def index
    @aces = Ace.all
  end

  # GET /aces/1 or /aces/1.json
  def show; end

  # GET /aces/new
  def new
    @ace = Ace.new
  end

  # GET /aces/1/edit
  def edit; end

  # POST /aces or /aces.json
  def create
    @ace = Ace.new(ace_params)

    respond_to do |format|
      if @ace.save
        format.html { redirect_to ace_url(@ace), notice: 'Ace was successfully created.' }
        format.json { render :show, status: :created, location: @ace }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aces/1 or /aces/1.json
  def update
    respond_to do |format|
      if @ace.update(ace_params)
        format.html { redirect_to ace_url(@ace), notice: 'Ace was successfully updated.' }
        format.json { render :show, status: :ok, location: @ace }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aces/1 or /aces/1.json
  def destroy
    @ace.destroy

    respond_to do |format|
      format.html { redirect_to aces_url, notice: 'Ace was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ace
    @ace = Ace.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def ace_params
    params.require(:ace).permit(:name, :img)
  end
end

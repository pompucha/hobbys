class HobbysController < ApplicationController
  before_action :set_hobby, only: [:show, :edit, :update]

  def index
    @hobbys = current_user.hobbys
  end

  def show
  end

  def new
    @hobby = Hobby.new
  end

  def create
    @hobby = current_user.hobbys.new(hobby_params)
    if @hobby.save
      redirect_to hobbys_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @hobby.update(hobby_params)
      redirect_to hobbys_path
    else
      render :edit
    end
  end

  def destroy
    @hobby.destroy
    redirect_to hobbys_path
  end

  private

    def hobby_params
      params.require(:hobby).permit(:name, :balance)
    end

    def set_hobby
      @hobby = current_user.hobbys.find(params[:id])
    end
end

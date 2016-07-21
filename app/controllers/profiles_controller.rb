class ProfilesController < ApplicationController

  def create
    @user = current_user
    @profile = Profile.find_by(user_id: current_user.id)
  end

  def edit
    @user = current_user
    @profile = Profile.find_by(user_id: current_user.id)
    @languages = Language.all
  end

  def show
    @user = Profile.find_by(user_id: params[:user_id])
    @languages = @user.languages
  end

  def update
    @user = current_user
    @profile = Profile.find_by(user_id: current_user.id)
    if current_user.id != @profile.user_id
      flash[:notice] = "Only owner can update"
      redirect_to '/'
    else
      @profile.update(profile_params)
      redirect_to user_profile_path
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :bio, language_ids:[])
  end

end

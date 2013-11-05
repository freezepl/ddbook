class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update]

  # def index
  #   @profiles = Profile.all
  # end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :account_type, :desc, :rate, :rate_min, :rate_max, :for_freelance, :for_hire, :position, :url_github, :url_dribbble, :url_fb, :url_linkedin, :url_behance, :url_bitbucket, :url_website)
    end
end

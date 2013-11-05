require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { account_type: @profile.account_type, desc: @profile.desc, first_name: @profile.first_name, for_freelance: @profile.for_freelance, for_hire: @profile.for_hire, last_name: @profile.last_name, position: @profile.position, rate: @profile.rate, rate_max: @profile.rate_max, rate_min: @profile.rate_min, url_behance: @profile.url_behance, url_bitbucket: @profile.url_bitbucket, url_dribbble: @profile.url_dribbble, url_fb: @profile.url_fb, url_github: @profile.url_github, url_linkedin: @profile.url_linkedin, url_website: @profile.url_website }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    patch :update, id: @profile, profile: { account_type: @profile.account_type, desc: @profile.desc, first_name: @profile.first_name, for_freelance: @profile.for_freelance, for_hire: @profile.for_hire, last_name: @profile.last_name, position: @profile.position, rate: @profile.rate, rate_max: @profile.rate_max, rate_min: @profile.rate_min, url_behance: @profile.url_behance, url_bitbucket: @profile.url_bitbucket, url_dribbble: @profile.url_dribbble, url_fb: @profile.url_fb, url_github: @profile.url_github, url_linkedin: @profile.url_linkedin, url_website: @profile.url_website }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end

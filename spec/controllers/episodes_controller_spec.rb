require 'rails_helper'

RSpec.describe EpisodesController, type: :controller do
  before :each do
    @podcast = Podcast.create(email: 'email@email.com' , password:'12345678', password_confirmation: '12345678', title: 'Tiele', description: 'desc', itunes:'#', stitcher: '#', podbay: '#')
  end
  describe "#create" do
    context "when episode is valid" do
      it "redirects to #show" do
        post :create,
        {:episode =>
          {title: 'Title',
           description: 'Description',
           episode_thumbnail: 'thumb.jpg',
           mp3: 'song.mp3'}
        }
      end
    end

    context "when episode is invalid" do
      it "redirects to #new" do

      end
    end
  end
end

require 'spec_helper'
describe Category do
  it { should have_many(:videos)}
  it { should validate_presence_of(:name)}

  describe "#recent_videos" do
    it "returns the videos in reverse chronicle order by created at"do
      comedies = Category.create(name: "comedies")
      video1 = Video.create(title:"Back to future",description:"A young",category: comedies, created_at: 2.day.ago)
      video2 = Video.create(title: "Futurama", description: "Fry 99.",category: comedies)
      expect(comedies.resent_video).to eq([video2,video1])
    end
    it "returns  all the videos if there less then 6 "do
      comedies = Category.create(name: "comedies")
      video1 = Video.create(title:"Back to future",description:"A young",category: comedies, created_at: 2.day.ago)
      video2 = Video.create(title: "Futurama", description: "Fry 99.",category: comedies)
      expect(comedies.resent_video.count).to eq(2)
    end
    it "returns 6 videos if there more than 6 videos" do
      comedies = Category.create(name: "comedies")
      7.times{ Video.create(title:"foo",description:"bar",category: comedies)}
      expect(comedies.resent_video.count).to eq(6)
    end
    it "returns most recent 6 videos" do
      comedies = Category.create(name: "comedies")
      6.times{ Video.create(title:"foo",description:"bar",category: comedies)}
      video1 = Video.create(title:"Back to future",description:"A young",category: comedies, created_at: 2.day.ago)
      expect(comedies.resent_video).not_to include(video1)
    end
    it "return empty array if category does not have any videos"do
      comedies = Category.create(name: "comedies")
      expect(comedies.resent_video).to eq([])
    end
  end
end
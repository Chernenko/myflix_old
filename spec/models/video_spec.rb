require 'spec_helper'
describe Video do
  it { should belong_to(:category)}
  it {should validate_presence_of(:title)}
  it {should validate_presence_of(:description)}
end
describe "search_by_title" do
it "returns an empty array if there is no match"do
video1= Video.create(title:"Back to future",description:"A young man is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his friend, Dr. Emmett Brown, and must make sure his high-school-age parents unite in order to save his own existence.")
video2= Video.create(title: "Futurama", description: "Fry, a pizza guy is accidentally frozen in 1999 and thawed out New Year's Eve 2999.")
expect(Video.search_by_title("hello")).to eq([])
end

it "returns an array of one video for an exact match" do
  video1= Video.create(title:"Back to future",description:"A young man is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his friend, Dr. Emmett Brown, and must make sure his high-school-age parents unite in order to save his own existence.")
  video2= Video.create(title: "Futurama", description: "Fry, a pizza guy is accidentally frozen in 1999 and thawed out New Year's Eve 2999.")
  expect(Video.search_by_title("Futurama")).to eq([video2])
end
it "returns an array of one video for a partial match" do
  video1= Video.create(title:"Back to future",description:"A young man is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his friend, Dr. Emmett Brown, and must make sure his high-school-age parents unite in order to save his own existence.")
  video2= Video.create(title: "Futurama", description: "Fry, a pizza guy is accidentally frozen in 1999 and thawed out New Year's Eve 2999.")
  expect(Video.search_by_title("futura")).to eq([video2])
end

it "returns an array of all matches ordered by created at" do
  video1= Video.create(title:"Back to future",description:"A young man is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his friend, Dr. Emmett Brown, and must make sure his high-school-age parents unite in order to save his own existence.", created_at: 1.day.ago)
  video2= Video.create(title: "Futurama", description: "Fry, a pizza guy is accidentally frozen in 1999 and thawed out New Year's Eve 2999.", created_at: 2.day.ago)
  expect(Video.search_by_title("futur")).to eq([video1,video2])
end
 it "returns an empty  array for search with an empty string  " do
   video1= Video.create(title:"Back to future",description:"A young man is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his friend, Dr. Emmett Brown, and must make sure his high-school-age parents unite in order to save his own existence.", created_at: 1.day.ago)
   video2= Video.create(title: "Futurama", description: "Fry, a pizza guy is accidentally frozen in 1999 and thawed out New Year's Eve 2999.", created_at: 2.day.ago)
   expect(Video.search_by_title(" ")).to eq([])
 end

end

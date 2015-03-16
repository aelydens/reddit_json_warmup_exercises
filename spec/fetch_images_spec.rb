require 'spec_helper'
require 'json'
require_relative '../image_fetcher'

describe ImageFetcher do

  before {
    json = File.read('data.json')
    json_data = JSON.parse(json)
    @image_fetcher = ImageFetcher.new(json_data)
  }

  it 'should return 25 children to parse through' do
    expect(@image_fetcher.count_children).to eq 25
  end

  it 'should return data for the first child' do
    expect(@image_fetcher.first_child).to eq(
                                                       {
                                                         "domain"=>"i.imgur.com",
                                                         "banned_by"=>nil,
                                                         "media_embed"=>{},
                                                         "subreddit"=>"aww",
                                                         "selftext_html"=>nil,
                                                         "selftext"=>"",
                                                         "likes"=>nil,
                                                         "secure_media"=>nil,
                                                         "link_flair_text"=>nil,
                                                         "id"=>"24j57c",
                                                         "gilded"=>0,
                                                         "secure_media_embed"=>{},
                                                         "clicked"=>false,
                                                         "stickied"=>false,
                                                         "author"=>"Bikeboy79",
                                                         "media"=>nil,
                                                         "score"=>3467,
                                                         "approved_by"=>nil,
                                                         "over_18"=>false,
                                                         "hidden"=>false,
                                                         "thumbnail"=>"http://b.thumbs.redditmedia.com/awNJfRyCWhsGlcBU.jpg",
                                                         "subreddit_id"=>"t5_2qh1o",
                                                         "edited"=>false,
                                                         "link_flair_css_class"=>nil,
                                                         "author_flair_css_class"=>nil,
                                                         "downs"=>5763,
                                                         "saved"=>false,
                                                         "is_self"=>false,
                                                         "permalink"=>"/r/aww/comments/24j57c/asked_my_sister_if_shes_seen_any_lions_while_in/",
                                                         "name"=>"t3_24j57c",
                                                         "created"=>1399054602,
                                                         "url"=>"http://i.imgur.com/XBGD1NL.jpg",
                                                         "author_flair_text"=>nil,
                                                         "title"=>"Asked my sister if she's seen any lions while in South Africa, she sent me this... (Apparently she's at a lion refuge)",
                                                         "created_utc"=>1399025802,
                                                         "ups"=>9230,
                                                         "num_comments"=>187,
                                                         "visited"=>false,
                                                         "num_reports"=>nil,
                                                         "distinguished"=>nil
                                                       }
                                                     )
  end

  it 'should return an array with all images' do
    expect(@image_fetcher.all_images).to match_array ([
                                                      "http://i.imgur.com/XBGD1NL.jpg",
                                                      "http://i.imgur.com/pavjxX2.jpg",
                                                      "http://i.imgur.com/ism63qG.jpg",
                                                      "http://imgur.com/aHYDt78",
                                                      "http://i.imgur.com/S8ObEUI.jpg",
                                                      "http://i.imgur.com/t7LYiRE.jpg",
                                                      "http://i.imgur.com/pQy12qd.gif",
                                                      "http://i.imgur.com/c3otPiM.jpg",
                                                      "http://i.imgur.com/yKo17zf.jpg",
                                                      "http://imgur.com/cc2TwTF",
                                                      "http://i.imgur.com/EGmPACE.jpg",
                                                      "http://imgur.com/JOoMo8p",
                                                      "http://i.imgur.com/YbDSTN0.jpg",
                                                      "http://imgur.com/6IxV62p",
                                                      "http://i.imgur.com/bsN6XsD.jpg",
                                                      "http://i.imgur.com/T6QFRQI.jpg",
                                                      "http://i.imgur.com/tlMKIWQ.jpg",
                                                      "http://i.imgur.com/9uoz48i.jpg",
                                                      "http://i.imgur.com/vNyNTWI.jpg",
                                                      "http://i.imgur.com/rUUCzLf.jpg",
                                                      "http://imgur.com/CZpMDC8",
                                                      "http://imgur.com/1omI1YL",
                                                      "http://i.imgur.com/v0LNgdV.jpg",
                                                      "http://i.imgur.com/dexZNqL.jpg",
                                                      "http://imgur.com/DT6mo9W"
                                                      ])

  end

  it 'should return an array of all of the imgur images within the JSON data' do
    expect(@image_fetcher.only_imgur_images).to eq ([
                                                                 "http://i.imgur.com/XBGD1NL.jpg",
                                                                 "http://i.imgur.com/pavjxX2.jpg",
                                                                 "http://i.imgur.com/ism63qG.jpg",
                                                                 "http://i.imgur.com/S8ObEUI.jpg",
                                                                 "http://i.imgur.com/t7LYiRE.jpg",
                                                                 "http://i.imgur.com/pQy12qd.gif",
                                                                 "http://i.imgur.com/c3otPiM.jpg",
                                                                 "http://i.imgur.com/yKo17zf.jpg",
                                                                 "http://i.imgur.com/EGmPACE.jpg",
                                                                 "http://i.imgur.com/YbDSTN0.jpg",
                                                                 "http://i.imgur.com/bsN6XsD.jpg",
                                                                 "http://i.imgur.com/T6QFRQI.jpg",
                                                                 "http://i.imgur.com/tlMKIWQ.jpg",
                                                                 "http://i.imgur.com/9uoz48i.jpg",
                                                                 "http://i.imgur.com/vNyNTWI.jpg",
                                                                 "http://i.imgur.com/rUUCzLf.jpg",
                                                                 "http://i.imgur.com/v0LNgdV.jpg",
                                                                 "http://i.imgur.com/dexZNqL.jpg"
                                                               ])

  end
end

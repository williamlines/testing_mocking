require "time_error"

RSpec.describe TimeError do
  it "calls an api to return server time difference" do
    requester_dbl = double(:requester)
    allow(requester_dbl).to receive(:get)
      .with(URI("https://worldtimeapi.org/api/ip"))
      .and_return('{"abbreviation":"BST","client_ip":"2a01:70:f00:1:4851:49cf:f0e5:6ad6","datetime":"2022-10-18T10:29:43.107828+01:00","day_of_week":2,"day_of_year":291,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1666085383,"utc_datetime":"2022-10-18T09:29:43.107828+00:00","utc_offset":"+01:00","week_number":42}')
    time_error = TimeError.new(requester_dbl)
    time = Time.new(2022, 10, 18, 10, 29, 43)
    result = time_error.error(time)
    expect(result).to eq 0.107828
  end
end
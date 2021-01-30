require "test_helper"

class TellusTest < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil ::Tellus::VERSION
  end

  def test_client_has_latitude_and_longitude

    client = Tellus::Client.new '54.15066', '-4.47894'

    assert_equal '54.15066', client.latitude
    assert_equal '-4.47894', client.longitude
  end

  def test_client
    client = Tellus::Client.new '54.15066', '-4.47894'
    assert_equal "https://nominatim.openstreetmap.org/reverse?format=json&lat=54.15066&lon=-4.47894&zoom=14" , client.url
  end

  def test_client_gets_address
    latitude = '54.15066'
    longitude = '-4.47894'
    client = Tellus::Client.new latitude, longitude
    address = client.get_address

    assert_equal 'Sydney Mount, Douglas, Middle, United Kingdom', address

  end


end

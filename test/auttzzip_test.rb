require 'autzzip'
require "minitest/autorun"

class TestAuTzzip < Minitest::Test
  def test_sydney_tz
    assert_equal "Australia/Sydney", Autzzip.find_by_zipcode('2001')
  end

  def test_darwin_with_0_zips
    assert_equal "Australia/Darwin", Autzzip.find_by_zipcode('0123')
  end

  def test_broken_hill_specific_zip
    assert_equal "Australia/Broken_Hill", Autzzip.find_by_zipcode('2880')
  end

  def test_nil_random_zip_code
    assert_nil Autzzip.find_by_zipcode('9999')
  end
end

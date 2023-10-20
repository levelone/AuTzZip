class Autzzip
  ZIP_MAPPING = {
    '0' => 'Australia/Darwin',
    '2' => 'Australia/Sydney',
    '3' => 'Australia/Melbourne',
    '4' => 'Australia/Brisbane',
    '5' => 'Australia/Adelaide',
    '6' => 'Australia/Perth',
    '7' => 'Australia/Hobart',
    '2880' => 'Australia/Broken_Hill',
    '2898' => 'Australia/Lord_Howe',
    '2899' => 'Pacific/Norfolk',
    '6443' => 'Australia/Eucla',
    '6798' => 'Indian/Christmas',
    '6799' => 'Indian/Cocos'
  }.freeze

  def self.find_by_zipcode(zip)
    return if zip.nil? || zip.empty?

    padded_zip = zip.rjust(4, '000')
    ZIP_MAPPING[padded_zip] ? ZIP_MAPPING[padded_zip] : ZIP_MAPPING[padded_zip[0]]
  end
end

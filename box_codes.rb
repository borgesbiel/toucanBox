class BoxCodes
  def self.box_codes_to_receive
    users.each do |user|
      user[:box_codes] = []
      box_codes.each do |box_code|
        next if box_code[:contents].any? { |content| user[:received_contents].include? content }
        user[:box_codes] << box_code
      end
    end
  end

  def self.users
    [
      { name: 'Steve', received_contents: %w(1a 1b 3c) },
      { name: 'Virginie', received_contents: %w(3a 2b 3c) },
      { name: 'Fiona', received_contents: %w(1b 2a 3b) },
      { name: 'Jenny', received_contents: %w(3b 2c 1b) },
      { name: 'James', received_contents: %w(2b 1b 3a) },
      { name: 'Fede', received_contents: %w(2c 3a 1c) },
      { name: 'Sara', received_contents: %w(3a 2c 3b) },
      { name: 'Tizi', received_contents: %w(2b 1b 2a) },
      { name: 'Thomas', received_contents: %w(3c 2b 1a) }
    ]
  end

  def self.box_codes
    [
      { code: 'gr1', contents: %w(1a 1b), type: :petite },
      { code: 'gr2', contents: %w(1a 2b), type: :petite },
      { code: 'gr3', contents: %w(1b 2c), type: :petite },
      { code: 'gr4', contents: %w(2c 3c), type: :petite },
      { code: 'gr5', contents: %w(3b 1c), type: :petite }
    ]
  end
end

require 'rails_helper'

RSpec.describe Site, type: :model do

  describe '#all_activities' do

    it 'Returns total kms json from fake api' do
      expect(Site.all_activities).to_json
    end


  end

end

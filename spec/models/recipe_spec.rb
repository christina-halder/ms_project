require 'rails_helper'

RSpec.describe Recipe do

  it 'content_type_id is eq recipe' do
    expect(Recipe.content_type_id).to eq 'recipe'
  end

  describe 'coerce fields' do
    let(:expected_coerce_fields) do
      {:title=>:String, :description=>:String, :chef=>:String, :tags=>:Array}
    end

    it 'content_type_id is eq recipe' do
      expect(Recipe.coerce_field).to eq expected_coerce_fields
    end
  end
end

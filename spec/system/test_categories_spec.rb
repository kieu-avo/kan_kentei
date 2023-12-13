require 'rails_helper'

RSpec.describe "TestCategories", type: :system do
  let!(:user) { create(:user) }
  let!(:finland) { create(:test_category, title: "フィンランド", region: "foreign") }
  let!(:canada) { create(:test_category, title: "カナダ", region: "foreign") }
  let!(:kumamoto) { create(:test_category, title: "熊本", region: "japan") }
  let!(:mie) { create(:test_category, title: "三重", region: "japan") }
  
  before do
    login(user)
    visit categories_path
  end

  #検索機能
  describe 'searching field' do
    it 'is displayed ' do 
      expect(page).to have_field('q_title_cont')
      expect(page).to have_link 'リセット'
      expect(page).to have_button '検索'
    end

    it 'has autocomplete function' do
      fill_in 'q[title_cont]', with: finland.title[0..2]
      expect(page).to have_selector('ul[data-autocomplete-target="results"] li',visible: true)
      expect(page).to have_content(finland.title)
      expect(page).to have_selector('ul[data-autocomplete-target="results"] li', text: finland.title)
    end

    it 'redirect to the review page when clicking on Finland link' do
      fill_in 'q[title_cont]', with: finland.title[0..2]
      expect(page).to have_selector('ul[data-autocomplete-target="results"] li',visible: true)
      expect(page).to have_content(finland.title)
      expect(page).to have_selector('ul[data-autocomplete-target="results"] li', text: finland.title)
      click_link 'フィンランド', match: :first
      expect(page).to have_current_path(category_reviews_path(finland.id))
    end
  end

  #検定リストの表示
  describe 'test category list' do
    it 'is displayed foreign lists' do
      TestCategory.where(region: 'foreign').each do |category|
          expect(page).to have_link(category.title)
      end
    end

    it 'is displayed Japanese lists' do
      TestCategory.where(region: 'japan').each do |category|
          expect(page).to have_link(category.title)
      end
    end
  
    it 'redirect to the review page when clicking on a Finland link' do
      expect(page).to have_link('フィンランド', href: category_reviews_path(finland))
      click_link 'フィンランド'
      expect(page).to have_current_path(category_reviews_path(finland))
    end
  end

  #google mapのテストは./requests/google_maps_spec.rbにて
  describe 'google_map' do
    it 'is displayed' do
      expect(page).to have_selector('div#map') 
    end
  end
end

require 'rails_helper'

RSpec.describe "Reviews", type: :system do
  let!(:user) { create(:user) }
  let!(:finland) { create(:test_category) }
  let!(:review1) { create(:review, test_category: finland) }
  let!(:review2) { create(:review, :content2, test_category: finland) }
  let!(:review3) { create(:review, :content3, test_category: finland) }
  let(:answer1) { create(:user_review_answer, review: review1, user: user) }
  let(:answer2) { create(:user_review_answer, review: review2, user: user) }
  let(:answer3) { create(:user_review_answer, review: review3, user: user) }

  before do
    login(user)
    visit categories_path
    click_link 'フィンランド', match: :first
  end

  #reviews/indexのテスト
  describe 'displaying total reviews' do 
    before do
      visit category_reviews_path(finland)
    end
    
    context 'when the total number of people rated is displayed' do
      it 'is successful' do 
        total_users = UserReviewAnswer.joins(:review).where(reviews: { test_category_id: finland.id }).count
        expect(page).to have_content("回答人数：#{total_users}名")
      end
    end

    context 'when all review contents are displayed' do
      it 'is successful' do
        [review1, review2, review3].each do |review|
          expect(page).to have_content(review.content)
        end
      end
    end

    context 'when all stars are displayed' do
      it 'is successful' do
        [answer1, answer2, answer3].each do |answer|
          expect(page).to have_selector("#star-rating-#{answer.review.id}")
        end
      end
    end

    context 'when clicking on buttons' do
      it 'redirects to the previous page when cliking on back button' do
        click_link '戻る'
        expect(page).to have_current_path(categories_path)
      end

      it 'redirects to the next when clicking on taking test button' do
        click_link '受検する'
        expect(page).to have_current_path(category_quizzes_path(finland))
      end 
    end
  end

  #reviews/newのテスト
  describe 'rating' do
    before do
      visit new_category_review_path(finland)
    end

    #成功
    context 'when all reviews are rated' do
      let!(:souvenir) { create(:souvenir_photo, test_category: finland) }

      it 'is successful' do
        [review1, review2, review3].each do |review|
          expect(page).to have_content(review.content)
          find("#star-rating-#{review.id}").click
        end

        click_button '送信'
        expect(page).to have_current_path(new_category_test_comment_path(finland))
        expect(page).to have_content(souvenir.name)
        expect(page).to have_content("レビューのご協力ありがとうございました")
      end
    end

    #失敗
    context 'when there are unreviewed items' do
      it 'is failed' do
        [review1, review2].each do |review|
          expect(page).to have_content(review.content)
          find("#star-rating-#{review.id}").click
        end
        
        click_button '送信'
        expect(current_path).to eq new_category_review_path(finland)
        expect(page).to have_content("レビューをお願いします")
        expect(page).to have_content("評価は1以上の値にしてください")
      end
    end
  end

  #既にレビュー済みの場合はスキップ
  describe 'skip rating' do
    let!(:answer1) { create(:user_review_answer, review: review1, user: user) }
    let!(:answer2) { create(:user_review_answer, review: review2, user: user) }
    let!(:answer3) { create(:user_review_answer, review: review3, user: user) }
    let!(:souvenir) { create(:souvenir_photo, test_category: finland) }

    before do
      visit new_category_review_path(finland)
    end

    context 'when the same user has already reviewed' do
      it 'skips rating page' do 
        expect(page).to have_current_path(new_category_test_comment_path(finland))
      end
    end
  end
end

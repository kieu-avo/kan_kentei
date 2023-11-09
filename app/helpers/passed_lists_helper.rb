module PassedListsHelper
  def find_latest_test_comments(category_id, comments)
    comments.find_by(test_category_id: category_id)&.id
  end
end

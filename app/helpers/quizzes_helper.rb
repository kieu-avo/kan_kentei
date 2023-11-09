module QuizzesHelper
  def has_image?(quiz)
    quiz.quiz_choices.any? { |choice| choice.image_url.present? }
  end
end
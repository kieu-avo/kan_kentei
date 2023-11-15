module ApplicationHelper
  def page_title(page_title = '')
    base_title = '勘検定'

    page_title.empty? ? base_title : page_title + ' | ' + base_title
  end

  def default_meta_tags
  {
    site: '勘検定',
    title: '勘検定',
    description: '日本・海外のあまり知られていないことを検定で出題し、「勘」を使って答えて頂くサービスです。',
    reverse: true,
    keywords: '勘、旅、クイズ、検定、お土産',
    canonical: request.original_url,
    image: image_url('ogp.png'),
    separator: '|',
    noindex: ! Rails.env.production?,

    og: {
      site_name: '勘検定',
      title: :title,
      description: :description,
      type: 'website',
      url: request.original_url,
      image: image_url('ogp.png'),
      locale: 'ja_JP',
    },

    twitter: {
      card: 'summary_large_image',
      image: image_url('ogp.png'),
      site: ''
    }
  }
  end
end

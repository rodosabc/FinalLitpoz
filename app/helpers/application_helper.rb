module ApplicationHelper
  def title(page_title)
    content_for :title, page_title.to_s
    end
  def description(page_description)
    content_for :description, page_description.to_s
  end
  def keywords(page_keywords)
    content_for :keywords, page_keywords.to_s
  end
end

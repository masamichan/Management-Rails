module ApplicationHelper
  def document_title
    if @title.present?
      "#{@title} - 管理システム"
    else
      "管理システム" 
    end
  end
end

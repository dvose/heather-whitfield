class HomeController < ApplicationController
  def index
    @nav_toggle = false
  end
  
  def education
    
  end
  
  def experience
        @screenshots = Dir.glob("#{Rails.root}/app/assets/images/screenshots/*.jpg")
  end
  
  def portfolio
    
  end
  
  def references
    
  end
  
  def recommendations 
    send_file(
    "#{Rails.root}/public/Heather-Whitfield-Recommendations.pdf",
    :filename => "Heather-Whitfield-Recommendations.pdf",
    :type => "application/pdf"
    )
  end
  
  def resume
    send_file(
    "#{Rails.root}/public/heather_whitfield_resume.pdf",
    :filename => "heather_whitfield_resume.pdf",
    :type => "application/pdf"
    )
  end
end

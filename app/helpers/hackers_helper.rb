module HackersHelper
  
  
  def gravatar_for(hacker, options = { :size => 30})
    
    gravatar_image_tag(hacker.email.downcase, :alt => hacker.name,
                                              :title => hacker.name,
                                              :gravatar => options)
  end
   
   
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #def index
  # 	render "index.html"
  # end
  def webDesign
  end

  def internet
  end

  def digital
  end

  def bigData
  end

  def cloud_solutions
  end

  def faq
  end

  # def getService(name)
  # 	return {image: "02.png",name: name,tagline:"Lorem ipsum dolor sit amet, consectetur adipisicing elit.",description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia sint rem inventore est reprehenderit voluptatum, placeat delectus dolore quam ab ea, illum omnis! Laboriosam neque accusantium ex aliquam, reiciendis, quo."}
  # end


  def about
  end

  def services
  end

  
  def contact
    @contact = Contact.new
  end
  

    #send message
  def contact_message
    @user = params
    notice =""
    begin
      email_status = ApplicationMailer.contact_message(@user).deliver
    rescue Exception => e
      email_status = false
    end
    
    
    if email_status
      notice = "Message has been sent successfully"
    else
      notice = "An error occurred."
    end
    redirect_to contacts_path, notice: notice
  end

end

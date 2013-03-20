ActiveAdmin.register User do
index do
  column :first_name
  column :last_name
  column :email
  column :birth_date
  column :gender
  column :zipcode
  column :cell_phone
  column :type
  default_actions
end
show do
	 panel "User Details" do
	    attributes_table_for user, 
	        :first_name,
			:last_name,
			:email,
			:birth_date,
			:gender,
			:zipcode,
			:cell_phone,
			:type
        end
end

	form do |f|
	    if f.object.errors.size > 0
      f.inputs "Validation errors" do
        content_tag(:li, f.object.errors.full_messages.join('<br/>').html_safe)
      end
    end 
    f.inputs "Create User" do
      f.input :first_name, :required => true
      f.input :last_name, :required => true
      f.input :email, :required => true
      f.input :birth_date, :required => true, :as => :date, :hint => 'Select a date',
         :prompt => {:day => "Day", :month => "Month", :year => "Year"},:start_year => 1950,
         :end_year => Time.now.year, :include_blank => false
      f.input :gender, :as => :select,:collection =>["Male","Female"], :include_blank => false
      f.input :zipcode, :required => true, :as => :number
      f.input :cell_phone, :required => true, :as => :number
      f.input :type, :as => :select,:collection =>["Parent","Sitter"], :include_blank => false
    end

    # f.actions do
    # 	f.action(:submit)
    # end
    f.commit_button
  end
end

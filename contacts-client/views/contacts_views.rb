module ContactsViews
  def contacts_index_view(contacts)
    contacts.each do |contact|
      puts "=" * 70
      contacts_show_view(contact)
    end
  end

 

  def contacts_show_view(contact)
    puts
    puts "#{contact.id} #{contact.full_name} - last updated: #{contact.updated_at}"
    puts "------------------------------"
    puts "Phone: #{contact.phone_number}"
    puts "Email: #{contact.email}"
    puts
    puts "Supplier: #{"product.supplier_name}"
    puts
    puts "contact.bio"
    puts
    puts "image_url"
    puts
  end
end


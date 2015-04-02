module ListingsHelper


  def print_tickets(tickets, requested = 1)
    if tickets == 0
      content_tag(:span, "Out of Stock", class: "in_stock")
    elsif tickets >= requested
      content_tag(:span, "In Stock (#{tickets})", class: "in_stock")
    else
      content_tag(:span, "Insufficient number of tickets (#{tickets})", class: "low_stock")
    end
  end
end



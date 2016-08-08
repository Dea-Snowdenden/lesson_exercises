customers = [
  {"name" => "trit", "second_name" => "southy", "age" => 31, "hairtype" => "zero"},
  {"name" => "pirate", "second_name" => "pete", "age" => 32, "hairtype" => "lots"},
{"name" => "silly", "second_name" => "sam", "age" => 33, "hairtype" => "curls"}
]

customers.each do |customer|

  # if ((customer["hairtype"] == ("lots" || "curls") ) && (customer["age"].to_i < 50))
  if(((customer["hairtype"]=="lots") || (customer["hairtype"] == "curls")) && (customer["age"].to_i < 50))

    puts "Young, Hairy customer details:"
    puts customer["name"]
    puts customer["second_name"]
    puts customer["age"]
    puts customer["hairtype"]
    puts "=" * 10
  end
end

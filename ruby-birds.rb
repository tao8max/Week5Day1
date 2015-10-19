class Bird  
  attr_accessor :use_wings
  attr_accessor :has_feathers

  def use_wings  
    use_wings = "can use wings to fly"
  end  

  def has_feathers
     has_feathers= "has feathers"  
  end  

  def can_sing
  	can_sing = "sings beautifully"
  end
end  
  

class Canary < Bird
end



class Penguin < Bird  
  def use_wings  
    use_wings = "can't fly"
  end  

  def can_sing
  	can_sing = "can't sing well"
  end   
end  

new_bird = Canary.new
puts "This bird Canary " + new_bird.use_wings
puts "It's also " + new_bird.has_feathers
puts "It " + new_bird.can_sing

second_bird = Penguin.new
puts "This bird Penguin " + second_bird.use_wings
puts "Even though it " + second_bird.has_feathers
puts "It " + second_bird.can_sing

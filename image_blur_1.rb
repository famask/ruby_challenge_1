# Build a class that allows us to build a new image with the data we specify. 
# Make it possible for the class to output the image to the screen.

# When we input the following:
# image = Image.new([
# [0, 0, 0, 0],
# [0, 1, 0, 0],
# [0, 0, 0, 1],
# [0, 0, 0, 0]
# ])

# And call the image.out_image on it, it should result in the following:

# 0000
# 0100
# 0001
# 0000

class Image
  def initialize(array)
    @array = array
  end 
    
  def out_image
    @array.each do |x|
       x.join
       @image = x.join
       puts @image
    end
  end
  
end


image = Image.new([[0,0,0,1], [1,1,1,0], [1,0,1,0], [0,0,1,0]])
image.out_image

#-------------------------------------------------------------------------------
# Seems like when nested arrays are being passed through, each sub array is being joined together 
# and the output is in list form 

# This works when one array is passed through

# class Image
#   def initialize(array)
#     joined_array = array.join
#     puts joined_array

#   end
# end

# image = Image.new([0,1,0,1])

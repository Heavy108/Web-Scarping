from PIL import Image
import svgwrite
import os

def jpg_to_svg(jpg_path, svg_path):
    # Open the JPG image
    img = Image.open(jpg_path)
    img = img.convert('RGB')  # Ensure image is in RGB mode
    
    # Create a new SVG drawing
    dwg = svgwrite.Drawing(svg_path, profile='tiny', size=(img.width, img.height))
    
    # Iterate over each pixel in the image
    for y in range(img.height):
        for x in range(img.width):
            r, g, b = img.getpixel((x, y))
            # Create a small rectangle for each pixel
            dwg.add(dwg.rect(insert=(x, y), size=(1, 1), fill=svgwrite.rgb(r, g, b, '%')))
    
    # Save the SVG file
    dwg.save()

# Example usage
input_folder = './dxxp'
output_folder = './Svg'

if not os.path.exists(output_folder):
    os.makedirs(output_folder)

for filename in os.listdir(input_folder):
    if filename.endswith('.jpg'):
        jpg_path = os.path.join(input_folder, filename)
        svg_filename = os.path.splitext(filename)[0] + '.svg'
        svg_path = os.path.join(output_folder, svg_filename)
        jpg_to_svg(jpg_path, svg_path)
        print(f'Converted {filename} to {svg_filename}')

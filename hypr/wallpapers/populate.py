import os

# # Get folders in the current working directory
# image_folders = [folder for folder in os.listdir() if os.path.isdir(os.path.join(os.getcwd(), folder))]
# image_folders.sort() # Sort alphabetically
# print(image_folders)

base_directory = "/home/willow/.dotfiles/hypr/wallpapers/"
readme = base_directory + "README.md"

# Discover image folders in the base directory
image_folders = [folder for folder in os.listdir(base_directory) if os.path.isdir(os.path.join(base_directory, folder))]
image_folders.sort()
# print(image_folders)

# Begin README.md
pre = f"""
<!-- HEADERS -->
<p align="center">
  <img width="25%" src="https://github.com/42Willow/dotfiles/blob/main/assets/42willow.gif?raw=true" />
</p>
<p align="center">
  <b> ~ Willow's wallpaper dump ~ </b>
</p>

All wallpapers here are suitable for a 4K monitor :)
Inspired by [flick0](https://github.com/flick0/kabegami)

-----------------
"""

# End README.md
post = ""

with open(readme, "w") as f:
    f.write(pre)

def image_embed(title,folder,img):
    return f"""<img src="./{folder}/{img}" title="{title}"><br>\n"""

with open(readme, "a") as f:
    for folder in image_folders:
        f.write("\n## " + folder + "\n")
        f.write("<details><summary></summary>\n")
        print(f"=== Folder: {folder} ===")
        for file in os.listdir(base_directory + folder):
            print(file)
            if file.endswith(".jpg") or file.endswith("jpeg") or file.endswith(".png") or file.endswith(".gif") or file.endswith(".webp") or file.endswith(".webm"):
                f.write(
                    image_embed(file[:-4], folder, file)
                )
        f.write("</details>\n")
    f.write(post)
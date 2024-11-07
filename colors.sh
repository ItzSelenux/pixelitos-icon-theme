#!/bin/bash

input_folder="green"

declare -A colors
colors["#91a666"]="#91a666"
colors["#2a2a2a"]="#2a2a2a"
colors["#779b50"]="#779b50"

for image in "$input_folder"/*.{png}; do
	for original_color in "${!colors[@]}"; do
		new_color="${colors[$original_color]}"
		magick convert "$image" -fill "$new_color" -opaque "$original_color" "$image"
	done
	echo "Colores reemplazados en: $image"
done

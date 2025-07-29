import os
import fitz  # PyMuPDF

input_dir = ""
output_dir = os.path.join(input_dir, "png")
dpi = 300

os.makedirs(output_dir, exist_ok=True)

for filename in os.listdir(input_dir):
    if filename.endswith(".pdf"):
        pdf_path = os.path.join(input_dir, filename)
        basename = os.path.splitext(filename)[0]
        print(f"Converting: {filename}")

        doc = fitz.open(pdf_path)
        page = doc[0]
        
        zoom = dpi / 72
        mat = fitz.Matrix(zoom, zoom)
        pix = page.get_pixmap(matrix=mat)

        output_path = os.path.join(output_dir, f"{basename}.png")
        pix.save(output_path)
        print(f"Saved: {output_path}")

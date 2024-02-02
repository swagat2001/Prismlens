from flask import Flask, render_template, Response
import cv2
import numpy as np
import os
import random

app = Flask(__name__)

# Folder path containing the spectacle images
spectacle_images_folder = "spectacles/"

def get_random_spectacle_image():
    # List all files in the spectacle images folder
    all_spectacle_images = [f for f in os.listdir(spectacle_images_folder) if f.endswith(".png")]

    # Choose a random spectacle image
    random_spectacle_image = random.choice(all_spectacle_images)

    # Return the full path to the randomly chosen image
    return os.path.join(spectacle_images_folder, random_spectacle_image)

# Load the initial spectacle image
glasses = cv2.imread(get_random_spectacle_image(), cv2.IMREAD_UNCHANGED)

def overlay_glasses(frame, face, glasses):
    x, y, w, h = face

    # Resize the glasses to fit the face
    glasses_resized = cv2.resize(glasses, (w, h))

    # Extract the alpha channel from glasses image
    alpha_channel = glasses_resized[:, :, 3] / 255.0

    # Adjust the position of the glasses slightly down
    y_offset = int(h * -0.1)  # You can adjust this value to fit your preference

    # Blend the glasses with the face ROI using alpha channel
    for c in range(0, 3):
        frame[y + y_offset:y + h + y_offset, x:x + w, c] = (
            frame[y + y_offset:y + h + y_offset, x:x + w, c] * (1 - alpha_channel)
            + glasses_resized[:, :, c] * alpha_channel
        )

def detect_faces(frame):
    face_cascade = cv2.CascadeClassifier(cv2.data.haarcascades + 'haarcascade_frontalface_default.xml')
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    faces = face_cascade.detectMultiScale(gray, scaleFactor=1.3, minNeighbors=5)
    return faces

def generate_frames():
    cap = cv2.VideoCapture(0)

    while True:
        ret, frame = cap.read()

        if not ret:
            break

        faces = detect_faces(frame)

        for face in faces:
            overlay_glasses(frame, face, glasses)

        ret, jpeg = cv2.imencode('.jpg', frame)
        frame_bytes = jpeg.tobytes()
        yield (b'--frame\r\n'
               b'Content-Type: image/jpeg\r\n\r\n' + frame_bytes + b'\r\n\r\n')

    cap.release()

@app.route('/')
def index():
    return render_template('glass.html')

@app.route('/video_feed')
def video_feed():
    return Response(generate_frames(), mimetype='multipart/x-mixed-replace; boundary=frame')

@app.route('/change_glasses')
def change_glasses():
    # Load a new random spectacle image
    global glasses
    glasses = cv2.imread(get_random_spectacle_image(), cv2.IMREAD_UNCHANGED)
    return "Changed glasses successfully!"

if __name__ == '__main__':
    app.run(debug=True)

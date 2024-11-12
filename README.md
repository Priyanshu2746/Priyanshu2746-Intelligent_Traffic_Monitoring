

# Intelligent Traffic Monitoring System

This project is a real-time **Intelligent Traffic Monitoring System** that detects and tracks vehicles on highways using the YOLO (You Only Look Once) model. It can process images, videos, and live streams from webcams or IP cameras. The application provides a vehicle count to assist in traffic monitoring and management.

## Features

- Real-time vehicle detection and tracking using YOLOv8.
- Supports multiple sources:
  - **Image** - Upload and process static images.
  - **Video** - Upload and analyze video files.
  - **Webcam** - Detect and count vehicles via webcam stream.
  - **IP Camera** - Monitor traffic using a live IP camera feed.
- Configurable confidence threshold to filter detection results.
- Displays bounding boxes and labels for detected vehicles.

## Requirements

To run this application, you need:

- **Python 3.7+**
- **Streamlit** - For the web interface.
- **Ultralytics YOLO** - For YOLO model support.
- **OpenCV** - For image processing.
- **NumPy** - For numerical operations.
  
The application is deployed on **Azure App Service** for easy accessibility.

## Installation

1. Clone the repository and navigate to the project directory:

   ```bash
   git clone https://github.com/yourusername/intelligent-traffic-monitoring.git
   cd intelligent-traffic-monitoring
   ```

2. Install the required dependencies:

   ```bash
   pip install streamlit opencv-python-headless numpy ultralytics
   ```

3. Download the YOLOv8n model weights (`yolov8n.pt`) from [Ultralytics](https://github.com/ultralytics/yolov8) and place them in the project directory.

## Usage

1. **Run the application**:

   ```bash
   streamlit run app.py
   ```

2. **Select the source type** in the sidebar:
   - **Image**: Upload an image for vehicle detection.
   - **Video**: Upload a video file for vehicle tracking.
   - **Webcam**: Use a webcam to monitor vehicles.
   - **IP Camera**: Input the IP camera URL to start monitoring.

3. **Set the Confidence Threshold** for detection using the slider in the sidebar.

4. **View the output**:
   - The application will display a processed frame with bounding boxes around detected vehicles.
   - A vehicle count is displayed above the frame.

## Code Overview

- `process_frame(frame)`: Detects vehicles in the frame, draws bounding boxes, and counts vehicles based on the confidence threshold.
- `display_count(container, count)`: Displays the vehicle count in the Streamlit UI.
- `st.sidebar.radio()`: Allows selection between image, video, webcam, and IP camera inputs.
  
## Deployment

This application is deployed on **Azure App Service**. Follow these steps to deploy:

1. Create an Azure App Service for Python.
2. Upload your code and model weights (`yolov8n.pt`).
3. Configure the startup command in Azure to run the Streamlit application.

## Contributing

Feel free to contribute by creating pull requests or opening issues for any improvements or bugs.

## License

This project is open-source and available under the MIT License.


#Use the provided base image
FROM agrigorev/zoomcamp-model:mlops-2024-3.10.13-slim

# Set the working directory inside the container
WORKDIR /app

# Install pandas and any other dependencies
RUN pip install flask pandas scikit-learn==1.5.0 pyarrow

# Copy the Flask app into the container
COPY app.py /app/app.py

# Expose port 8080 (or any port you choose) to allow external access
EXPOSE 8080

# Command to run the Flask app
CMD ["python", "app.py"]

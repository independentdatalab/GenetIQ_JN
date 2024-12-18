# Use the official Python image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the script into the container
COPY Notebook1.ipynb /app/


# Install dependencies
RUN pip install pandas matplotlib numpy jupyter

# Command to run the script
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"]



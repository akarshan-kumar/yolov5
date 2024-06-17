FROM python:3.8



# RUN apt-get update && apt-get install -y git pkg-config 




COPY . /root
WORKDIR /root/yolov5

# RUN pip3 install matpoltlib

RUN pip3 install --upgrade pip && pip3 install -r /root/yolov5/requirements.txt

# COPY /trData .
# COPY /best.pt .
# COPY /coco128.yaml .

# detect.py --weights /root/best.pt --img 416 --conf 0.5 --source /root/trData/images/val
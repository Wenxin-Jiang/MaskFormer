import torch

if __name__ == "__main__":
	print(torch.__version__)
	gpu_available = torch.cuda.is_available()
	device_count = torch.cuda.device_count()
	current_device = torch.cuda.current_device()
	print(f"gpu_available={gpu_available},\ndevice_count={device_count},\ncurrent_device={current_device}\n")
	print(torch.cuda.get_device_name(0))


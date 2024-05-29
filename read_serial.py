import serial
import time

ser = serial.Serial('/dev/tty.usbmodem0010500679563', 115200, timeout=1)
robot_step_time = 150

def read_adc():
    try:
        line = ser.readline().decode().strip()
        if line:
            adc_val = float(line)
            time_val = time.time()
            return time_val, adc_val
    except ValueError as e:
        print(f"Error reading ADC value: {e}")
    except serial.SerialException as e:
        print(f"Serial communication error: {e}")
    return None, None


def main():
    filename = "data/laser_comm.csv"
    with open(filename, "w") as file:
        while True:
            t, v = read_adc()
            time.sleep(robot_step_time / 1000.0)
            if v is not None:
                file.write(f"{t}, {v}\n")
                print(t, v)


if __name__ == '__main__':
    main()
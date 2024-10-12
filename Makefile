# Variables
ASM = nasm
SRC_DIR = src
BUILD_DIR = build

# Default target to build the disk image
all: $(BUILD_DIR)/main.img

# Rule to create the disk image from the binary
$(BUILD_DIR)/main.img: $(BUILD_DIR)/main.bin
	cp $(BUILD_DIR)/main.bin $(BUILD_DIR)/main.img
	truncate -s 1440k $(BUILD_DIR)/main.img

# Rule to assemble the source file into a binary
$(BUILD_DIR)/main.bin: $(SRC_DIR)/main.asm | $(BUILD_DIR)
	$(ASM) $(SRC_DIR)/main.asm -f bin -o $(BUILD_DIR)/main.bin

# Rule to create the build directory if it doesn't exist
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Clean up build files
.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)/*

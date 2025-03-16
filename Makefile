# Директории
SRC_DIR = source
OBJ_DIR = objects
INC_DIR = include
LST_DIR = listen

# Исходные файлы
SRC_CPP = $(wildcard $(SRC_DIR)/*.cpp)
SRC_ASM = $(wildcard $(SRC_DIR)/*.asm)

# Объектные файлы
OBJ_CPP = $(patsubst $(SRC_DIR)/%.cpp, $(OBJ_DIR)/%.o, $(SRC_CPP))
OBJ_ASM = $(patsubst $(SRC_DIR)/%.asm, $(OBJ_DIR)/%.o, $(SRC_ASM))

# Файлы листинга
LST_ASM = $(patsubst $(SRC_DIR)/%.asm, $(LST_DIR)/%.lst, $(SRC_ASM))

# Исполняемый файл
TARGET = do

# Компиляторы и флаги
CC = g++
ASM = nasm
ASMFLAGS = -f elf64 -l $(LST_DIR)/MyPrintf.lst
CFLAGS = -c -I$(INC_DIR)

# Цель по умолчанию
all: $(TARGET)

# Компоновка объектных файлов
$(TARGET): $(OBJ_CPP) $(OBJ_ASM)
	@@$(CC) $(OBJ_CPP) $(OBJ_ASM) -o $(TARGET)

# Компиляция C кода
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	@@$(CC) $(CFLAGS) $< -o $@

# Компиляция ассемблерного кода
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.asm
	@@$(ASM) $(ASMFLAGS) $< -o $@

# Очистка
clean:
	@@rm -f $(OBJ_DIR)/*.o $(LST_DIR)/*.lst $(TARGET)
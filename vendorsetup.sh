#Syncing KernelSU to latest source and avoid a conflict
echo "Syncing KernelSU to latest source [1/1]"
cd kernel/realme/RMX1901 && git submodule sync && git submodule update --init --recursive && cd KernelSU && git checkout main && git pull && touch Android.mk && cd ../../../..

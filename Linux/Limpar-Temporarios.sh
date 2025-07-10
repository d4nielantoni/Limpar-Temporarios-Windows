echo "Iniciando limpeza..."

sudo rm -rf /tmp/*

sudo apt-get clean

rm -rf ~/.cache/*

rm -rf ~/.local/share/Trash/*
rm -rf ~/.local/share/Trash/files/*
rm -rf ~/.local/share/Trash/info/*

for d in ~/.cache/mozilla/firefox/*/cache2; do
    [ -d "$d" ] && rm -rf "$d"/*
done

echo "Limpeza concluída."

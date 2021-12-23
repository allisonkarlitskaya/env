if [ ! -d ~allison ]; then
    useradd allison
    passwd allison
fi

if [ ! -d ~lis ]; then
    useradd lis
    passwd lis
fi

if [ ! -d ~admin ]; then
    useradd admin
    passwd admin
fi

usermod -c "Allison Karlitskaya" allison
usermod -c "Allison Karlitskaya" lis
usermod -c "Administrator" admin

# only 'admin' in wheel
groupmod -U admin wheel

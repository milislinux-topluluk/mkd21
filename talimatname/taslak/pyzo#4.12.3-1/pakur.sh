install pyzolauncher.py "$PKG"/usr/bin/pyzo

    install -Dm644 pyzo/resources/pyzo.desktop -t "$PKG"/usr/share/applications
    for i in 16 32 48 64 128 256 ; do
        install -Dm644 pyzo/resources/appicons/pyzologo${i}.png "$PKG"/usr/share/icons/hicolor/${i}x${i}/apps/pyzologo.png
    done
rm $PKG/usr/{README.md,pyzolauncher.py,LICENSE.md,pyzo.appdata.xml}

## How to install

### Remember, this is still work in progress

To test the theme you need to install the midnDark theme.
If not, not all settings works.
You will find it at https://github.com/KaOSx/midna
Sorry there is no midna package for debian at the moment.

You also need breeze-dark, you can install it via apt-get install breeze,
and the breeze-icons-theme.

siduction: (as root) copy the org.kde.deepspace file to 

/usr/share/plasma/look-and-feel/

cd to /usr/share/plasma/look-and-feel/

and run 

plasmapkg2 --install org.kde.deepspace/

## How to test the splash-screen

(as $user) You can test the splash screen without installation:

ksplashqml ~/download/directory/org.kde.deepspace/ --test


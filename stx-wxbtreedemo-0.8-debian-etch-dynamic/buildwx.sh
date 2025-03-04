#!/bin/sh -x

wxwidgets() {
    rm -rf wxWidgets-2.8.3
    tar xjf wxWidgets-2.8.3.tar.bz2

    pushd wxWidgets-2.8.3/
    ./configure --prefix=/wx-2.8.3-gtk2 --disable-shared --enable-static --enable-optimise \
        --enable-unicode --with-gtk=2 \
        --disable-plugins \
        --disable-stl \
        --disable-no_rtti --disable-no_exceptions \
        --disable-omf \
	--disable-compat24 \
	--disable-compat26 \
	--enable-intl \
	--enable-config \
	--disable-protocols \
	--disable-ftp \
	--disable-http \
	--disable-fileproto \
	--disable-sockets \
	--enable-ole \
	--enable-dataobj \
	--disable-ipc \
	--disable-arcstream \
	--disable-backtrace \
	--disable-catch_segvs \
	--disable-cmdline \
	--enable-datetime \
	--disable-debugreport \
	--disable-dialupman \
	--disable-dynlib \
	--disable-dynamicloader \
	--disable-exceptions \
	--disable-ffile \
	--enable-file \
	--disable-filesystem \
	--enable-fontmap \
	--disable-fs_archive \
	--disable-fs_inet \
	--disable-fs_zip \
	--disable-geometry \
	--enable-log \
	--enable-longlong \
	--disable-mimetype \
	--disable-mslu \
	--disable-snglinst \
	--disable-std_iostreams \
	--disable-std_string \
	--disable-stdpaths \
	--disable-stopwatch \
	--enable-streams \
	--enable-sysoptions \
	--disable-tarstream \
	--enable-textbuf \
	--enable-textfile \
	--enable-timer \
	--disable-sound \
	--disable-mediactrl \
	--disable-gstreamer8 \
	--disable-printfposparam \
	--disable-zipstream \
	--disable-url \
	--disable-variant \
	--disable-protocol \
	--disable-protocol-http \
	--disable-protocol-ftp \
	--disable-protocol-file \
	--enable-threads \
	--disable-docview \
	--disable-help \
	--disable-mshtmlhelp \
	--disable-html \
	--disable-htmlhelp \
	--disable-xrc \
	--disable-aui \
	--enable-constraints \
	--disable-printarch \
	--disable-mdi \
	--disable-mdidoc \
	--enable-loggui \
	--enable-logwin \
	--enable-logdialog \
	--disable-webkit \
	--disable-richtext \
	--disable-graphics_ctx \
	--disable-postscript \
	--disable-prologio \
	--disable-resources \
	--enable-clipboard \
	--enable-dnd \
	--disable-metafile \
	--enable-controls \
	--enable-accel \
	--disable-animatectrl \
	--enable-button \
	--enable-bmpbutton \
	--enable-bmpcombobox \
	--disable-calendar \
	--enable-caret \
	--enable-checkbox \
	--enable-checklst \
	--enable-choice \
	--enable-choicebook \
	--enable-collpane \
	--disable-colourpicker \
	--enable-combobox \
	--enable-comboctrl \
	--disable-datepick \
	--enable-dirpicker \
	--enable-display \
	--enable-filepicker \
	--disable-fontpicker \
	--enable-gauge \
	--enable-grid \
	--disable-dataviewctrl \
	--enable-hyperlink \
	--enable-imaglist \
	--enable-listbook \
	--enable-listbox \
	--enable-listctrl \
	--enable-notebook \
	--enable-odcombobox \
	--enable-radiobox \
	--enable-radiobtn \
	--enable-sash \
	--enable-scrollbar \
	--enable-slider \
	--enable-spinbtn \
	--enable-spinctrl \
	--enable-splitter \
	--enable-statbmp \
	--enable-statbox \
	--enable-statline \
	--enable-stattext \
	--enable-statusbar \
	--enable-tabdialog \
	--enable-textctrl \
	--enable-togglebtn \
	--enable-toolbar \
	--enable-tbarnative \
	--enable-treebook \
	--enable-toolbook \
	--enable-treectrl \
	--enable-tipwindow \
	--enable-popupwin \
	--enable-commondlg \
	--enable-aboutdlg \
	--enable-choicedlg \
	--disable-coldlg \
	--enable-filedlg \
	--enable-finddlg \
	--disable-fontdlg \
	--enable-dirdlg \
	--enable-msgdlg \
	--enable-numberdlg \
	--disable-splash \
	--enable-textdlg \
	--enable-tipdlg \
	--enable-progressdlg \
	--disable-wizarddlg \
	--enable-menus \
	--disable-miniframe \
	--enable-tooltips \
	--enable-splines \
	--enable-mousewheel \
	--enable-validators \
	--enable-busyinfo \
	--disable-joystick \
	--disable-metafiles \
	--enable-dragimage \
	--disable-accessibility \
	--enable-dccache \
	--enable-palette \
	--enable-image \
	--disable-gif \
	--disable-pcx \
	--disable-tga \
	--disable-iff \
	--disable-pnm \
	--enable-xpm \
	--disable-ico_cur \
	--disable-largefile \
	--without-libpng \
	--without-libjpeg \
	--without-libtiff \
	--without-libxpm \
	--without-libmspack \
	--without-regex \
	--with-zlib \
	--without-odbc \
	--without-expat \
	&& \
    make && \
    make install
    popd
}

export CFLAGS="-O3 -I/usr/include"
export CXXFLAGS="-O3 -I/usr/include"
export LDFLAGS="-L/usr/lib"

$1

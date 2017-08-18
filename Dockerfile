FROM ubuntu:17.10

#RUN apt-get update && apt-get install -y curl vim g++ git automake frei0r-plugins-dev gnutls libgnutls-dev \
#	ladspa-sdk libladspa-ocaml-dev libslv2-dev libiec61883-dev libass libass-dev libbluray-dev libbs2b-dev libflite-dev libflite1 libgme-dev \
#	libgsm-dev libgsm1-dev libmodplug-dev opencv-dev libcv-dev opus-dev libopus-dev librtmp-dev librschroedinger-dev \
#	libschroedinger-1.0-0 libschroedinger-dev shine-dev libshine-dev libsoxr-dev libssh-dev libtwolame-dev libwavpack-dev libwebp-dev libx265-dev libxvid-dev \
#	libxvidcore-dev libxv-dev libxvmc-dev libzmq-dev libczmq-dev libzvbi-dev libopenal-dev libcdio-dev \
#	libcdparanoia-dev libcdio-cdda-dev libcdio-dev libcdio-paranoia-dev libcdio-paranoia1 libcdparanoia-dev libcdparanoia0 freeglut3-dev libxmu-dev 

RUN apy-get update && apt-get install -y curl vim g++ git automake frei0r-plugins-dev ladspa-sdk libladspa-ocaml-dev libiec61883-dev libass-dev libbluray-dev libbs2b-dev \
	libflite1 libgsm1-dev libmodplug-dev libopus-dev librtmp-dev libshine-dev libsoxr-dev libssh-dev libtwolame-dev libwavpack-dev libwebp-dev libx265-dev \
	libxvidcore-dev libxv-dev libxvmc-dev libczmq-dev libzvbi-dev libopenal-dev libcdio-dev libcdparanoia-dev libcdio-cdda-dev libcdio-dev libcdio-paranoia-dev \
	libcdio-paranoia1 libcdparanoia-dev libcdparanoia0 freeglut3-dev libxmu-dev nasm libcaca-dev libdc1394-22-dev libgme-dev libmp3lame-dev \
	libopenjp2-7-dev libpulse-dev libspeex-dev libvorbis-dev libvbx-dev libx264-dev 

RUN git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg

RUN cd ffmpeg; ./configure --prefix=/usr --extra-version=ubuntu-17.10.1 --build-suffix=-ffmpeg --toolchain=hardened --libdir=/usr/lib/x86_64-linux-gnu --incdir=/usr/include/x86_64-linux-gnu --enable-gpl --enable-shared --disable-stripping --enable-avresample --enable-avisynth --enable-frei0r --enable-gnutls --enable-ladspa --enable-libass --enable-libbluray --enable-libbs2b --enable-libcaca --enable-libcdio --enable-libfontconfig --enable-libfreetype --enable-libfribidi --enable-libgme --enable-libgsm --enable-libmodplug --enable-libmp3lame --enable-libopenjpeg --enable-openal --enable-libopus --enable-libpulse --enable-librtmp --enable-libschroedinger --enable-libshine --enable-libspeex --enable-libtwolame --enable-libvorbis --enable-libvpx --enable-libwavpack --enable-libwebp --enable-libxvid --enable-libzvbi --enable-opengl --enable-x11grab --enable-libdc1394 --enable-libzmq --enable-libssh --enable-libsoxr --enable-libx264 --enable-libopencv --enable-nvenc --enable-nonfree \
	&& make \
	&& make install

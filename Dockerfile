FROM davidva/unibuild-26

MAINTAINER David Va <davidva@tutanota.com>

RUN rm -rf united-build \ 
&& git clone https://github.com/kuboosoft/united-build.git \
&& cd united-build \
&& cp -f urpms / \
&& chmod a+x urpms \
&& chmod a+x /urpms \
&& ./urpms -g UnitedRPMs/x264 -s x264.spec -r true -d 'dist .fc26' -n true -c true  
CMD ["/bin/bash", "/usr/bin/bash"]




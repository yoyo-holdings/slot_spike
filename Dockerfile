FROM perl
ADD . /slot_spike
WORKDIR /slot_spike
RUN cpanm Carton && carton install
EXPOSE 8080
ENTRYPOINT ["carton", "exec", "hypnotoad"]
CMD ["-f", "script/slot_spike"]

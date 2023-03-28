FROM dart:2.18.6-sdk

WORKDIR /dart_backend
#COPY . /dart_backend/
#RUN dart pub get
#RUN dart pub global activate conduit 4.1.
ADD . /dart_backend/
RUN dart pub get

RUN dart pub global activate conduit 4.1.6

EXPOSE 6200
#CMD ["dart", "pub","run","conduit:conduit","serve","--port","6200", "dart", "bin/dart_backend.dart"]
ENTRYPOINT ["dart", "pub", "run", "conduit:conduit", "serve", "--port", "6200"]

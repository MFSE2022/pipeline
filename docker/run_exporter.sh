#!/bin/bash

# Prüfen, ob alle notwendigen Umgebungsvariablen gesetzt sind
if [ -z "$REPO_PATH" ] || [ -z "$BASE_PATH" ] || [ -z "$USER_NAME" ] || [ -z "$PASSWORD" ] || [ -z "$UNZIP_PATH" ]; then
  echo "Error: One or more required environment variables are not set."
  exit 1
fi

# Ausgabe der verwendeten Parameter
echo "Running LocalExporter.jar with the following parameters:"
echo "repoPath: $REPO_PATH"
echo "basePath: $BASE_PATH"
echo "userName: $USER_NAME"
echo "password: $PASSWORD"
echo "unzipPath: $UNZIP_PATH"

# Führe die JAR-Datei mit den Umgebungsvariablen aus
java -jar /app/Exporter.jar "$REPO_PATH" "$BASE_PATH" "$USER_NAME" "$PASSWORD" "$UNZIP_PATH"
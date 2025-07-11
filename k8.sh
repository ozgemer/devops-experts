DIRECTORY="k8-config"
for file in "$DIRECTORY"/*; do
  if [[ -f "$file" ]]; then
    kubectl apply -f "$file"
  fi
done
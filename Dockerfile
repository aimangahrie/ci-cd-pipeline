- name: Build and push Docker image
  run: |
    docker build -t my-app .
    echo ${{ secrets.DOCKER_PASSWORD }} | docker login -u ${{ secrets.DOCKER_USERNAME }} --password-stdin
    docker push my-app

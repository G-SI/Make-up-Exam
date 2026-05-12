package platform.security

# deny use of latest image tags
deny[msg] {
  input.kind == "Deployment"
  some i
  image := input.spec.template.spec.containers[i].image
  endswith(image, ":latest")
  msg = sprintf("image %v uses the latest tag", [image])
}

# deny privileged containers
deny[msg] {
  input.kind == "Deployment"
  some i
  container := input.spec.template.spec.containers[i]
  container.securityContext.privileged == true
  msg = sprintf("container %v is privileged", [container.name])
}

# require labels on deployment metadata and pod template
deny[msg] {
  input.kind == "Deployment"
  not input.metadata.labels["app"]
  msg = "deployment is missing metadata label 'app'"
}

deny[msg] {
  input.kind == "Deployment"
  not input.spec.template.metadata.labels["app"]
  msg = "pod template is missing label 'app'"
}

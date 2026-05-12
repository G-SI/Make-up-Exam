package main

deny[msg] {
    input.spec.template.spec.containers[_].image == "nginx:latest"
    msg := "Latest image tags are not allowed"
}

deny[msg] {
    not input.metadata.labels
    msg := "Labels are required"
}
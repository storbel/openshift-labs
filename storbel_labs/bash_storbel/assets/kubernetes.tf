resource "kubernetes_namespace" "example" {
  metadata {
    annotations = {
      name = "example-annotation"
    }

    labels = {
      mylabel = "label-value"
    }

    name = "terraform-example-namespace"
  }
}

resource "kubernetes_persistent_volume" "pv-mypv" {
  metadata {
    name = "pv-mypv"
  }
  spec {
    capacity = {
      storage = "2Gi"
    }
    access_modes = ["ReadWriteMany","ReadWriteOnce"]
    persistent_volume_source {
      vsphere_volume {
        volume_path = "/data/pv-mypv"
      }
    }
  }
}

resource "kubernetes_secret" "example" {

  for_each = toset(var.secrets)
  metadata {
    name = each.value
    namespace  = "acs"
  }

  data = {
    username = "admin"
    password = "P4ssw0rd"
  }

  type = "kubernetes.io/"${each.value}
}
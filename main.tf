module "example" {
  source  = "./1_resource_group"  # Ruta al directorio del módulo

  prefix         = "dev"
  resource_group = "rg-test"
}
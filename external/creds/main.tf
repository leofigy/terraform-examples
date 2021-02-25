data "external" "mongoatlasvaultcredentials" {
    program = ["python3", "${path.module}/auth.py"]
    query = {
        user = "default"
    }
}

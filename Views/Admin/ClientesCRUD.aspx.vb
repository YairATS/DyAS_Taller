

Public Class ClientesCRUD
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnRegistrar_Click(sender As Object, e As EventArgs) Handles btnRegistrar.Click
        Dim nuevoCliente As New Clientes() With {
            .Id = txtId.Text,
            .Nombre = txtNombre.Text,
            .ApPaterno = txtApPaterno.Text,
            .ApMaterno = txtApMaterno.Text,
            .Direccion = txtDireccion.Text,
            .Telefono = txtTelefono.Text,
            .Frecuente = txtFrecuente.Text
        }

        ' Crear una instancia de ClientesDAO
        Dim clientesDAO As New ClientesDAO()

        ' Llamar al método Insertar para guardar el nuevo cliente
        If clientesDAO.Insertar(nuevoCliente) Then

        Else

        End If
    End Sub
End Class
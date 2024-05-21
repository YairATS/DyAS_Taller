Public Class ClientesCRUD
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    'Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewClientes.SelectedIndexChanged

    '    Dim row As GridViewRow = GridViewClientes.SelectedRow

    '    txtId.Text = row.Cells(1).Text
    '    txtNombre.Text = row.Cells(2).Text
    '    txtPaterno.Text = row.Cells(3).Text
    '    txtMaterno.Text = row.Cells(4).Text
    '    txtDireccion.Text = row.Cells(5).Text
    '    txtTelefono.Text = row.Cells(6).Text
    '    txtFrecuente.Text = row.Cells(7).Text

    'End Sub



    Public Sub Limpiar()
        txtId.Text = ""
        txtNombre.Text = ""
        txtPaterno.Text = ""
        txtMaterno.Text = ""
        txtDireccion.Text = ""
        txtTelefono.Text = ""
        txtFrecuente.Text = ""

        lblMensaje.Text = ""
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Limpiar()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Try
            ' Crear una instancia de ClientesDAO
            Dim clientesDAO As New ClientesDAO()
            Dim cliente As Clientes = clientesDAO.ObtenerPorId(txtId.Text.Trim())

            ' Verificar si se encontró el cliente
            If cliente IsNot Nothing Then
                txtNombre.Text = cliente.Nombre
                txtPaterno.Text = cliente.ApPaterno
                txtMaterno.Text = cliente.ApMaterno
                txtDireccion.Text = cliente.Direccion
                txtTelefono.Text = cliente.Telefono
                txtFrecuente.Text = cliente.Frecuente
                lblMensaje.ForeColor = System.Drawing.Color.Green
                lblMensaje.Text = "Cliente encontrado."
            Else
                lblMensaje.Text = "Cliente no encontrado."
            End If
        Catch ex As Exception
            ' Mostrar mensaje de error
            lblMensaje.Text = $"Ocurrió un error: {ex.Message}"
        End Try


    End Sub

    Protected Sub btnRegistrar_Click(sender As Object, e As EventArgs) Handles btnRegistrar.Click
        Try
            ' Crear una instancia de Clientes y llenar con los datos de los TextBox
            Dim nuevoCliente As New Clientes() With {
                .Id = txtId.Text.Trim(),
                .Nombre = txtNombre.Text.Trim(),
                .ApPaterno = txtPaterno.Text.Trim(),
                .ApMaterno = txtMaterno.Text.Trim(),
                .Direccion = txtDireccion.Text.Trim(),
                .Telefono = txtTelefono.Text.Trim(),
                .Frecuente = txtFrecuente.Text.Trim()
            }

            ' Crear una instancia de ClientesDAO
            Dim clientesDAO As New ClientesDAO()

            ' Llamar al método Insertar para guardar el nuevo cliente
            If clientesDAO.Insertar(nuevoCliente) Then
                ' Mostrar mensaje de éxito
                lblMensaje.ForeColor = System.Drawing.Color.Green
                lblMensaje.Text = "Cliente registrado exitosamente."
                Limpiar()
            Else
                ' Mostrar mensaje de error
                lblMensaje.Text = "Error al registrar el cliente."
            End If
        Catch ex As Exception
            ' Mostrar mensaje de error
            lblMensaje.Text = $"Ocurrió un error: {ex.Message}"
        End Try
    End Sub

    Protected Sub btnModificar_Click(sender As Object, e As EventArgs) Handles btnModificar.Click
        Try
            ' Crear una instancia de Clientes y llenar con los datos de los TextBox
            Dim cliente As New Clientes() With {
                .Id = txtId.Text.Trim(),
                .Nombre = txtNombre.Text.Trim(),
                .ApPaterno = txtPaterno.Text.Trim(),
                .ApMaterno = txtMaterno.Text.Trim(),
                .Direccion = txtDireccion.Text.Trim(),
                .Telefono = txtTelefono.Text.Trim(),
                .Frecuente = txtFrecuente.Text.Trim()
            }

            ' Crear una instancia de ClientesDAO
            Dim clientesDAO As New ClientesDAO()

            ' Llamar al método Actualizar para modificar el cliente
            If clientesDAO.Actualizar(cliente) Then
                lblMensaje.ForeColor = System.Drawing.Color.Green
                lblMensaje.Text = "Cliente modificado exitosamente."
                Limpiar()
            Else
                lblMensaje.Text = "Error al modificar el cliente."
            End If
        Catch ex As Exception
            ' Mostrar mensaje de error
            lblMensaje.Text = $"Ocurrió un error: {ex.Message}"
        End Try
    End Sub

    Protected Sub btnBorrar_Click(sender As Object, e As EventArgs) Handles btnBorrar.Click
        Try
            ' Crear una instancia de ClientesDAO
            Dim clientesDAO As New ClientesDAO()

            ' Llamar al método Eliminar para eliminar el cliente
            If clientesDAO.Eliminar(txtId.Text.Trim()) Then
                lblMensaje.ForeColor = System.Drawing.Color.Green
                lblMensaje.Text = "Cliente eliminado exitosamente."
                Limpiar()
            Else
                lblMensaje.Text = "Error al eliminar el cliente."
            End If
        Catch ex As Exception
            ' Mostrar mensaje de error
            lblMensaje.Text = $"Ocurrió un error: {ex.Message}"
        End Try
    End Sub
End Class
Public Class PiezasCRUD
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnRegistrar_Click(sender As Object, e As EventArgs) Handles btnRegistrar.Click
        Try
            ' Crear una instancia de Piezas y llenar con los datos de los TextBox
            Dim nuevaPieza As New Piezas() With {
                .Id = txtId.Text.Trim(),
                .Nombre = txtNombre.Text.Trim(),
                .Marca = txtMarca.Text.Trim(),
                .Proveedor = txtProveedor.Text.Trim(),
                .Existencias = Convert.ToInt32(txtExistencias.Text.Trim()),
                .Precio_Unitario = Convert.ToDecimal(txtPrecioUnitario.Text.Trim())
            }

            ' Crear una instancia de PiezasDAO
            Dim piezasDAO As New PiezasDAO()

            ' Llamar al método Insertar para guardar la nueva pieza
            If piezasDAO.Insertar(nuevaPieza) Then
                ' Mostrar mensaje de éxito
                lblMensaje.ForeColor = System.Drawing.Color.Green
                lblMensaje.Text = "Pieza registrada exitosamente."
            Else
                ' Mostrar mensaje de error
                lblMensaje.Text = "Error al registrar la pieza."
            End If
        Catch ex As Exception
            ' Mostrar mensaje de error
            lblMensaje.Text = $"Ocurrió un error: {ex.Message}"
        End Try
    End Sub

    Protected Sub btnConsultar_Click(sender As Object, e As EventArgs) Handles btnConsultar.Click
        Try
            ' Crear una instancia de PiezasDAO
            Dim piezasDAO As New PiezasDAO()

            ' Llamar al método ObtenerPorId para obtener la pieza por su Id
            Dim piezaConsultada As Piezas = piezasDAO.ObtenerPorId(txtId.Text.Trim())

            If piezaConsultada IsNot Nothing Then
                ' Llenar los TextBox con los datos de la pieza consultada
                txtNombre.Text = piezaConsultada.Nombre
                txtMarca.Text = piezaConsultada.Marca
                txtProveedor.Text = piezaConsultada.Proveedor
                txtExistencias.Text = piezaConsultada.Existencias.ToString()
                txtPrecioUnitario.Text = piezaConsultada.Precio_Unitario.ToString("F2")
                lblMensaje.Text = "Pieza consultada exitosamente."
            Else
                ' Mostrar mensaje de error
                lblMensaje.Text = "No se encontró una pieza con el ID proporcionado."
            End If
        Catch ex As Exception
            ' Mostrar mensaje de error
            lblMensaje.Text = $"Ocurrió un error: {ex.Message}"
        End Try
    End Sub

    Protected Sub btnModificar_Click(sender As Object, e As EventArgs) Handles btnModificar.Click
        Try
            ' Crear una instancia de Piezas y llenar con los datos de los TextBox
            Dim piezaActualizar As New Piezas() With {
                .Id = txtId.Text.Trim(),
                .Nombre = txtNombre.Text.Trim(),
                .Marca = txtMarca.Text.Trim(),
                .Proveedor = txtProveedor.Text.Trim(),
                .Existencias = Convert.ToInt32(txtExistencias.Text.Trim()),
                .Precio_Unitario = Convert.ToDecimal(txtPrecioUnitario.Text.Trim())
            }

            ' Crear una instancia de PiezasDAO
            Dim piezasDAO As New PiezasDAO()

            ' Llamar al método Actualizar para actualizar la pieza
            If piezasDAO.Actualizar(piezaActualizar) Then
                ' Mostrar mensaje de éxito
                lblMensaje.ForeColor = System.Drawing.Color.Green
                lblMensaje.Text = "Pieza actualizada exitosamente."
            Else
                ' Mostrar mensaje de error
                lblMensaje.Text = "Error al actualizar la pieza."
            End If
        Catch ex As Exception
            ' Mostrar mensaje de error
            lblMensaje.Text = $"Ocurrió un error: {ex.Message}"
        End Try
    End Sub

    Protected Sub btnBorrar_Click(sender As Object, e As EventArgs) Handles btnBorrar.Click
        Try
            ' Crear una instancia de PiezasDAO
            Dim piezasDAO As New PiezasDAO()

            ' Llamar al método Eliminar para eliminar la pieza por su Id
            If piezasDAO.Eliminar(txtId.Text.Trim()) Then
                ' Mostrar mensaje de éxito
                lblMensaje.ForeColor = System.Drawing.Color.Green
                lblMensaje.Text = "Pieza eliminada exitosamente."
            Else
                ' Mostrar mensaje de error
                lblMensaje.Text = "Error al eliminar la pieza."
            End If
        Catch ex As Exception
            ' Mostrar mensaje de error
            lblMensaje.Text = $"Ocurrió un error: {ex.Message}"
        End Try
    End Sub
End Class
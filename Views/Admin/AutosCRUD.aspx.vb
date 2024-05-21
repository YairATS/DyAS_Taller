Public Class AutosCRUD
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Public Sub Limpiar()
        txtId.Text = ""
        txtMarca.Text = ""
        txtModelo.Text = ""
        txtColor.Text = ""
        txtTipo.Text = ""
        DropClientesId.SelectedIndex = -1

        lblMensaje.Text = ""
    End Sub
    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles ButtonLimpiar.Click
        Limpiar()
    End Sub

    Protected Sub btnRegistrar_Click(sender As Object, e As EventArgs) Handles btnRegistrar.Click
        Try
            ' Crear una instancia de Autos y llenar con los datos de los TextBox
            Dim nuevoAuto As New Autos() With {
                .Id = Convert.ToInt32(txtId.Text.Trim()),
                .Marca = txtMarca.Text.Trim(),
                .Modelo = txtModelo.Text.Trim(),
                .Color = txtColor.Text.Trim(),
                .Tipo = txtTipo.Text.Trim(),
                .ClientesId = DropClientesId.SelectedValue.Trim()
            }

            ' Crear una instancia de AutosDAO
            Dim autosDAO As New AutosDAO()

            ' Llamar al método Insertar para guardar el nuevo auto
            If autosDAO.Insertar(nuevoAuto) Then
                ' Mostrar mensaje de éxito
                lblMensaje.ForeColor = System.Drawing.Color.Green
                lblMensaje.Text = "Auto registrado exitosamente."
                Limpiar()
            Else
                ' Mostrar mensaje de error
                lblMensaje.Text = "Error al registrar el auto."
            End If
        Catch ex As Exception
            ' Mostrar mensaje de error
            lblMensaje.Text = $"Ocurrió un error: {ex.Message}"
        End Try

        Limpiar()
    End Sub

    Protected Sub btnConsultar_Click(sender As Object, e As EventArgs) Handles btnConsultar.Click
        Try
            ' Crear una instancia de AutosDAO
            Dim autosDAO As New AutosDAO()

            ' Llamar al método ObtenerPorId para obtener el auto por su Id
            Dim autoConsultado As Autos = autosDAO.ObtenerPorId(Convert.ToInt32(txtId.Text.Trim()))

            If autoConsultado IsNot Nothing Then
                ' Llenar los TextBox con los datos del auto consultado
                txtMarca.Text = autoConsultado.Marca
                txtModelo.Text = autoConsultado.Modelo
                txtColor.Text = autoConsultado.Color
                txtTipo.Text = autoConsultado.Tipo
                DropClientesId.Text = autoConsultado.ClientesId
                lblMensaje.Text = "Auto consultado exitosamente."
            Else
                ' Mostrar mensaje de error
                lblMensaje.Text = "No se encontró un auto con el ID proporcionado."
            End If
        Catch ex As Exception
            ' Mostrar mensaje de error
            lblMensaje.Text = $"Ocurrió un error: {ex.Message}"
        End Try
    End Sub

    Protected Sub btnModificar_Click(sender As Object, e As EventArgs) Handles btnModificar.Click
        Try
            ' Crear una instancia de Autos y llenar con los datos de los TextBox
            Dim autoActualizar As New Autos() With {
                .Id = Convert.ToInt32(txtId.Text.Trim()),
                .Marca = txtMarca.Text.Trim(),
                .Modelo = txtModelo.Text.Trim(),
                .Color = txtColor.Text.Trim(),
                .Tipo = txtTipo.Text.Trim(),
                .ClientesId = DropClientesId.SelectedValue.Trim()
            }

            ' Crear una instancia de AutosDAO
            Dim autosDAO As New AutosDAO()

            ' Llamar al método Actualizar para actualizar el auto
            If autosDAO.Actualizar(autoActualizar) Then
                ' Mostrar mensaje de éxito
                lblMensaje.ForeColor = System.Drawing.Color.Green
                lblMensaje.Text = "Auto actualizado exitosamente."
                Limpiar()
            Else
                ' Mostrar mensaje de error
                lblMensaje.Text = "Error al actualizar el auto."
            End If
        Catch ex As Exception
            ' Mostrar mensaje de error
            lblMensaje.Text = $"Ocurrió un error: {ex.Message}"
        End Try

        Limpiar()
    End Sub

    Protected Sub btnBorrar_Click(sender As Object, e As EventArgs) Handles btnBorrar.Click
        Try
            ' Crear una instancia de AutosDAO
            Dim autosDAO As New AutosDAO()

            ' Llamar al método Eliminar para eliminar el auto por su Id
            If autosDAO.Eliminar(Convert.ToInt32(txtId.Text.Trim())) Then
                ' Mostrar mensaje de éxito
                lblMensaje.ForeColor = System.Drawing.Color.Green
                lblMensaje.Text = "Auto eliminado exitosamente."
                Limpiar()
            Else
                ' Mostrar mensaje de error
                lblMensaje.Text = "Error al eliminar el auto."
            End If
        Catch ex As Exception
            ' Mostrar mensaje de error
            lblMensaje.Text = $"Ocurrió un error: {ex.Message}"
        End Try

        Limpiar()
    End Sub
End Class
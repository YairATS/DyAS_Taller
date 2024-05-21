Public Class ServiciosCRUD
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub Limpiar()
        ' Limpiar los campos de texto
        txtId.Text = ""
        txtTipo.Text = ""
        txtModeloCoche.Text = ""
        txtDescripcion.Text = ""
        txtEstadoServicio.Text = ""
        txtCostoEstimado.Text = ""
        txtFechaInicio.Text = ""
        txtHora.Text = ""
        DropDownListCliente.SelectedIndex = -1
        DropDownListCoche.SelectedIndex = -1
        txtFechaEntrega.Text = ""

        lblCostoEstimado.Text = ""
        lblMensaje.Text = ""
        lblMensaje2.Text = ""

    End Sub

    Protected Sub btnRegistrar_Click(sender As Object, e As EventArgs) Handles btnRegistrar.Click
        Try
            ' Crear una instancia de Servicio y llenar con los datos de los TextBox
            Dim nuevoServicio As New Servicio() With {
                .Id = txtId.Text.Trim(),
                .Tipo = txtTipo.Text.Trim(),
                .Modelo_Coche = txtModeloCoche.Text.Trim(),
                .Descripcion = txtDescripcion.Text.Trim(),
                .Estado_Servicio = txtEstadoServicio.Text.Trim(),
                .Costo_Estimado = Convert.ToDecimal(txtCostoEstimado.Text.Trim()),
                .Fecha_Inicio = Convert.ToDateTime(txtFechaInicio.Text.Trim()),
                .Hora = TimeSpan.Parse(txtHora.Text.Trim()),
                .Clientes_Id = DropDownListCliente.SelectedValue.Trim(),
                .Autos_Id = DropDownListCoche.SelectedValue.Trim(),
                .Fecha_Entrega = Convert.ToDateTime(txtFechaEntrega.Text.Trim())
            }

            ' Crear una instancia de ServicioDAO
            Dim servicioDAO As New ServicioDAO()

            ' Llamar al método Insertar para guardar el nuevo servicio
            If servicioDAO.Insertar(nuevoServicio) Then
                ' Mostrar mensaje de éxito
                lblMensaje.ForeColor = System.Drawing.Color.Green
                lblMensaje.Text = "Servicio registrado exitosamente."
                Limpiar()
            Else
                ' Mostrar mensaje de error
                lblMensaje.Text = "Error al registrar el servicio."
            End If
        Catch ex As Exception
            ' Mostrar mensaje de error
            lblMensaje.Text = $"Ocurrió un error: {ex.Message}"
        End Try
    End Sub

    Protected Sub btnConsultar_Click(sender As Object, e As EventArgs) Handles btnConsultar.Click
        Try
            ' Crear una instancia de ServicioDAO
            Dim servicioDAO As New ServicioDAO()

            ' Llamar al método ObtenerPorId para obtener el servicio por su Id
            Dim servicioConsultado As Servicio = servicioDAO.ObtenerPorId(txtId.Text.Trim())

            If servicioConsultado IsNot Nothing Then
                ' Llenar los TextBox con los datos del servicio consultado
                txtTipo.Text = servicioConsultado.Tipo
                txtModeloCoche.Text = servicioConsultado.Modelo_Coche
                txtDescripcion.Text = servicioConsultado.Descripcion
                txtEstadoServicio.Text = servicioConsultado.Estado_Servicio
                txtCostoEstimado.Text = servicioConsultado.Costo_Estimado.ToString("F2")
                txtFechaInicio.Text = servicioConsultado.Fecha_Inicio.ToString("yyyy-MM-dd")
                txtHora.Text = servicioConsultado.Hora.ToString()
                DropDownListCliente.Text = servicioConsultado.Clientes_Id
                DropDownListCoche.Text = servicioConsultado.Autos_Id.ToString()
                txtFechaEntrega.Text = servicioConsultado.Fecha_Entrega.ToString("yyyy-MM-dd")
                lblMensaje.Text = "Servicio consultado exitosamente."
            Else
                ' Mostrar mensaje de error
                lblMensaje.Text = "No se encontró un servicio con el ID proporcionado."
            End If
        Catch ex As Exception
            ' Mostrar mensaje de error
            lblMensaje.Text = $"Ocurrió un error: {ex.Message}"
        End Try
    End Sub

    Protected Sub btnModificar_Click(sender As Object, e As EventArgs) Handles btnModificar.Click
        Try
            ' Crear una instancia de Servicio y llenar con los datos de los TextBox
            Dim servicioActualizar As New Servicio() With {
                .Id = txtId.Text.Trim(),
                .Tipo = txtTipo.Text.Trim(),
                .Modelo_Coche = txtModeloCoche.Text.Trim(),
                .Descripcion = txtDescripcion.Text.Trim(),
                .Estado_Servicio = txtEstadoServicio.Text.Trim(),
                .Costo_Estimado = Convert.ToDecimal(txtCostoEstimado.Text.Trim()),
                .Fecha_Inicio = Convert.ToDateTime(txtFechaInicio.Text.Trim()),
                .Hora = TimeSpan.Parse(txtHora.Text.Trim()),
                .Clientes_Id = DropDownListCliente.SelectedValue.Trim(),
                .Autos_Id = DropDownListCoche.SelectedValue.Trim(),
                .Fecha_Entrega = Convert.ToDateTime(txtFechaEntrega.Text.Trim())
            }

            ' Crear una instancia de ServicioDAO
            Dim servicioDAO As New ServicioDAO()

            ' Llamar al método Actualizar para actualizar el servicio
            If servicioDAO.Actualizar(servicioActualizar) Then
                ' Mostrar mensaje de éxito
                lblMensaje.ForeColor = System.Drawing.Color.Green
                lblMensaje.Text = "Servicio actualizado exitosamente."
                Limpiar()
            Else
                ' Mostrar mensaje de error
                lblMensaje.Text = "Error al actualizar el servicio."
            End If
        Catch ex As Exception
            ' Mostrar mensaje de error
            lblMensaje.Text = $"Ocurrió un error: {ex.Message}"
        End Try
    End Sub

    Protected Sub btnBorrar_Click(sender As Object, e As EventArgs) Handles btnBorrar.Click
        Try
            ' Crear una instancia de ServicioDAO
            Dim servicioDAO As New ServicioDAO()

            ' Llamar al método Eliminar para eliminar el servicio por su Id
            If servicioDAO.Eliminar(txtId.Text.Trim()) Then
                ' Mostrar mensaje de éxito
                lblMensaje.ForeColor = System.Drawing.Color.Green
                lblMensaje.Text = "Servicio eliminado exitosamente."
                Limpiar()
            Else
                ' Mostrar mensaje de error
                lblMensaje.Text = "Error al eliminar el servicio."
            End If
        Catch ex As Exception
            ' Mostrar mensaje de error
            lblMensaje.Text = $"Ocurrió un error: {ex.Message}"
        End Try
    End Sub

    Protected Sub ButtonLimpiar_Click(sender As Object, e As EventArgs) Handles ButtonLimpiar.Click
        Limpiar()
    End Sub

    Protected Sub btnAgregarPiezas_Click(sender As Object, e As EventArgs) Handles btnAgregarPiezas.Click
        Dim servicioId As String = txtId.Text
        Dim piezaId As String = DropDownListPiezas.SelectedValue

        If Not String.IsNullOrEmpty(servicioId) And Not String.IsNullOrEmpty(piezaId) Then
            Dim servicioPiezasDAO As New ServicioPiezasDAO()
            Dim servicioPieza As New Servicio_Piezas() With {
                .Servicio_Id = servicioId,
                .Piezas_Id = piezaId
            }

            Try
                Dim resultado As Boolean = servicioPiezasDAO.Insertar(servicioPieza)
                If resultado Then
                    lblMensaje2.Text = "Pieza agregada correctamente al servicio."
                    lblMensaje2.ForeColor = System.Drawing.Color.Green
                Else
                    lblMensaje2.Text = "Error al agregar la pieza al servicio."
                    lblMensaje2.ForeColor = System.Drawing.Color.Red
                End If
            Catch ex As Exception
                lblMensaje2.Text = "Error: " & ex.Message
                lblMensaje2.ForeColor = System.Drawing.Color.Red
            End Try
        Else
            lblMensaje2.Text = "Por favor, ingrese un ID de servicio válido y seleccione una pieza."
            lblMensaje2.ForeColor = System.Drawing.Color.Red
        End If

    End Sub

    Protected Sub btnCalcular_Click(sender As Object, e As EventArgs) Handles btnCalcular.Click
        Dim servicioId As String = txtId.Text

        If Not String.IsNullOrEmpty(servicioId) Then
            Try
                ' Crear una instancia de ServicioDAO
                Dim servicioDAO As New ServicioDAO()

                ' Llamar al método para actualizar el costo estimado del servicio
                servicioDAO.ActualizarCostoEstimadoServicio(servicioId)

                ' Actualizar el costo estimado en el campo de texto
                Dim servicio As Servicio = servicioDAO.ObtenerPorId(servicioId)
                If servicio IsNot Nothing Then
                    txtCostoEstimado.Text = servicio.Costo_Estimado.ToString()
                    lblCostoEstimado.Text = "Costo estimado actualizado exitosamente."
                    lblCostoEstimado.ForeColor = System.Drawing.Color.Green
                Else
                    lblCostoEstimado.Text = "Servicio no encontrado."
                    lblCostoEstimado.ForeColor = System.Drawing.Color.Red
                End If

            Catch ex As Exception
                lblCostoEstimado.Text = "Error al calcular el costo: " & ex.Message
                lblCostoEstimado.ForeColor = System.Drawing.Color.Red
            End Try
        Else
            lblCostoEstimado.Text = "Por favor, ingrese un ID de servicio válido."
            lblCostoEstimado.ForeColor = System.Drawing.Color.Red
        End If

    End Sub
End Class
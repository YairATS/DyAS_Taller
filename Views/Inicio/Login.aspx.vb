Public Class WebForm3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim nombreUsuario As String = txtNombre.Text.Trim()
        Dim contraseña As String = txtContraseña.Text.Trim()

        ' Verificar las credenciales utilizando la función en la clase Admin
        Dim admin As New AdminLogin()
        Dim credencialesValidas As Boolean = admin.VerificarCredenciales(nombreUsuario, contraseña)

        If credencialesValidas Then
            ' Credenciales válidas, redireccionar a otra página (por ejemplo, Dashboard.aspx)
            Response.Redirect("Dashboard.aspx")
        Else
            ' Mostrar mensaje de error o realizar otra acción
            lblError.Text = "Credenciales inválidas."
        End If
    End Sub
End Class
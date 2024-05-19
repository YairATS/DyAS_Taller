Imports System.Data.SqlClient

Public Class AdminLogin
    ' Propiedades de la clase
    Public Property ID As String
    Public Property NombreUsuario As String
    Public Property Contraseña As String

    ' Constructor sin parámetros
    Public Sub New()
    End Sub

    ' Constructor con parámetros
    Public Sub New(id As String, nombreUsuario As String, contraseña As String)
        Me.ID = id
        Me.NombreUsuario = nombreUsuario
        Me.Contraseña = contraseña
    End Sub

    ' Métodos Get y Set automáticos mediante propiedades
    ' ID
    Public Property AdminID As String
        Get
            Return ID
        End Get
        Set(value As String)
            ID = value
        End Set
    End Property

    ' Nombre_Usuario
    Public Property AdminNombreUsuario As String
        Get
            Return NombreUsuario
        End Get
        Set(value As String)
            NombreUsuario = value
        End Set
    End Property

    ' Contraseña
    Public Property AdminContraseña As String
        Get
            Return Contraseña
        End Get
        Set(value As String)
            Contraseña = value
        End Set
    End Property

    ' Método para verificar las credenciales
    Public Function VerificarCredenciales(nombreUsuario As String, contraseña As String) As Boolean
        Dim resultado As Boolean = False
        Dim conexion As Conexion = Conexion.ObtenerInstancia() ' Usamos la instancia singleton
        Dim connection As SqlConnection = conexion.ObtenerConexion()

        Try
            connection.Open()
            Dim query As String = "SELECT COUNT(*) FROM [Admin] WHERE [Nombre_Usuario] = @NombreUsuario AND [Contraseña] = @Contraseña"
            Using command As New SqlCommand(query, connection)
                command.Parameters.AddWithValue("@NombreUsuario", nombreUsuario)
                command.Parameters.AddWithValue("@Contraseña", contraseña)
                Dim count As Integer = Convert.ToInt32(command.ExecuteScalar())
                If count > 0 Then
                    resultado = True
                End If
            End Using
        Catch ex As Exception
            ' Manejo de errores
            Throw New Exception("Error al verificar las credenciales: " & ex.Message)
        Finally
            connection.Close()
        End Try

        Return resultado
    End Function
End Class

Imports System.Data.SqlClient

Public Class Conexion
    ' Singleton
    Private Shared instancia As Conexion = Nothing
    Private connectionString As String = "Server=YAIR\SQLEXPRESS; database=ProyectoTaller; Integrated Security = True"

    Private Sub New()
    End Sub

    Public Shared Function ObtenerInstancia() As Conexion
        If instancia Is Nothing Then
            instancia = New Conexion()
        End If
        Return instancia
    End Function

    Public Function ObtenerConexion() As SqlConnection
        Return New SqlConnection(connectionString)
    End Function

End Class
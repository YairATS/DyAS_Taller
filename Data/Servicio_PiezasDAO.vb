Imports System.Data.SqlClient

Public Class ServicioPiezasDAO
    ' DAO
    Private conexion As Conexion = Conexion.ObtenerInstancia()

    ' Método para insertar una relación Servicio-Piezas
    Public Function Insertar(servicioPiezas As Servicio_Piezas) As Boolean
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "INSERT INTO Servicio_Piezas (Servicio_Id, Piezas_Id) VALUES (@Servicio_Id, @Piezas_Id)"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Servicio_Id", servicioPiezas.Servicio_Id)
                    command.Parameters.AddWithValue("@Piezas_Id", servicioPiezas.Piezas_Id)
                    command.ExecuteNonQuery()
                    Return True
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Throw New Exception("Error al insertar la relación Servicio-Piezas: " & ex.Message)
            End Try
        End Using
    End Function

    ' Método para eliminar una relación Servicio-Piezas
    Public Function Eliminar(servicio_Id As String, piezas_Id As String) As Boolean
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "DELETE FROM Servicio_Piezas WHERE Servicio_Id = @Servicio_Id AND Piezas_Id = @Piezas_Id"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Servicio_Id", servicio_Id)
                    command.Parameters.AddWithValue("@Piezas_Id", piezas_Id)
                    command.ExecuteNonQuery()
                    Return True
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Throw New Exception("Error al eliminar la relación Servicio-Piezas: " & ex.Message)
            End Try
        End Using
    End Function

    ' Método para obtener todas las relaciones Servicio-Piezas de un servicio por su ID
    Public Function ObtenerPorServicioId(servicio_Id As String) As List(Of Servicio_Piezas)
        Dim listaServicioPiezas As New List(Of Servicio_Piezas)()
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "SELECT * FROM Servicio_Piezas WHERE Servicio_Id = @Servicio_Id"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Servicio_Id", servicio_Id)
                    Using reader As SqlDataReader = command.ExecuteReader()
                        While reader.Read()
                            Dim servicioPiezas As New Servicio_Piezas()
                            servicioPiezas.Servicio_Id = reader("Servicio_Id").ToString()
                            servicioPiezas.Piezas_Id = reader("Piezas_Id").ToString()
                            listaServicioPiezas.Add(servicioPiezas)
                        End While
                    End Using
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Throw New Exception("Error al obtener las relaciones Servicio-Piezas por ID de servicio: " & ex.Message)
            End Try
        End Using
        Return listaServicioPiezas
    End Function

    ' Método para obtener todas las relaciones Servicio-Piezas de una pieza por su ID
    Public Function ObtenerPorPiezasId(piezas_Id As String) As List(Of Servicio_Piezas)
        Dim listaServicioPiezas As New List(Of Servicio_Piezas)()
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "SELECT * FROM Servicio_Piezas WHERE Piezas_Id = @Piezas_Id"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Piezas_Id", piezas_Id)
                    Using reader As SqlDataReader = command.ExecuteReader()
                        While reader.Read()
                            Dim servicioPiezas As New Servicio_Piezas()
                            servicioPiezas.Servicio_Id = reader("Servicio_Id").ToString()
                            servicioPiezas.Piezas_Id = reader("Piezas_Id").ToString()
                            listaServicioPiezas.Add(servicioPiezas)
                        End While
                    End Using
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Throw New Exception("Error al obtener las relaciones Servicio-Piezas por ID de pieza: " & ex.Message)
            End Try
        End Using
        Return listaServicioPiezas
    End Function
End Class

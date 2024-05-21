Imports System.Data.SqlClient

Public Class ServicioDAO
    ' DAO
    Private conexion As Conexion = Conexion.ObtenerInstancia()

    ' Método para insertar un nuevo servicio
    Public Function Insertar(servicio As Servicio) As Boolean
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "INSERT INTO Servicio (Id, Tipo, Modelo_Coche, Descripcion, Estado_Servicio, Costo_Estimado, Fecha_Inicio, Hora, Clientes_Id, Autos_Id, Fecha_Entrega) VALUES (@Id, @Tipo, @Modelo_Coche, @Descripcion, @Estado_Servicio, @Costo_Estimado, @Fecha_Inicio, @Hora, @Clientes_Id, @Autos_Id, @Fecha_Entrega)"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Id", servicio.Id)
                    command.Parameters.AddWithValue("@Tipo", servicio.Tipo)
                    command.Parameters.AddWithValue("@Modelo_Coche", servicio.Modelo_Coche)
                    command.Parameters.AddWithValue("@Descripcion", servicio.Descripcion)
                    command.Parameters.AddWithValue("@Estado_Servicio", servicio.Estado_Servicio)
                    command.Parameters.AddWithValue("@Costo_Estimado", servicio.Costo_Estimado)
                    command.Parameters.AddWithValue("@Fecha_Inicio", servicio.Fecha_Inicio)
                    command.Parameters.AddWithValue("@Hora", servicio.Hora)
                    command.Parameters.AddWithValue("@Clientes_Id", servicio.Clientes_Id)
                    command.Parameters.AddWithValue("@Autos_Id", servicio.Autos_Id)
                    command.Parameters.AddWithValue("@Fecha_Entrega", servicio.Fecha_Entrega)
                    command.ExecuteNonQuery()
                    Return True
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Throw New Exception("Error al insertar el servicio: " & ex.Message)
            End Try
        End Using
    End Function

    Public Function Actualizar(servicio As Servicio) As Boolean
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "UPDATE Servicio SET Tipo = @Tipo, Modelo_Coche = @Modelo_Coche, Descripcion = @Descripcion, Estado_Servicio = @Estado_Servicio, Costo_Estimado = @Costo_Estimado, Fecha_Inicio = @Fecha_Inicio, Hora = @Hora, Clientes_Id = @Clientes_Id, Autos_Id = @Autos_Id, Fecha_Entrega = @Fecha_Entrega WHERE Id = @Id"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Id", servicio.Id)
                    command.Parameters.AddWithValue("@Tipo", servicio.Tipo)
                    command.Parameters.AddWithValue("@Modelo_Coche", servicio.Modelo_Coche)
                    command.Parameters.AddWithValue("@Descripcion", servicio.Descripcion)
                    command.Parameters.AddWithValue("@Estado_Servicio", servicio.Estado_Servicio)
                    command.Parameters.AddWithValue("@Costo_Estimado", servicio.Costo_Estimado)
                    command.Parameters.AddWithValue("@Fecha_Inicio", servicio.Fecha_Inicio)
                    command.Parameters.AddWithValue("@Hora", servicio.Hora)
                    command.Parameters.AddWithValue("@Clientes_Id", servicio.Clientes_Id)
                    command.Parameters.AddWithValue("@Autos_Id", servicio.Autos_Id)
                    command.Parameters.AddWithValue("@Fecha_Entrega", servicio.Fecha_Entrega)
                    command.ExecuteNonQuery()
                    Return True
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Throw New Exception("Error al actualizar el servicio: " & ex.Message)
            End Try
        End Using
    End Function

    Public Function Eliminar(id As String) As Boolean
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "DELETE FROM Servicio WHERE Id = @Id"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Id", id)
                    command.ExecuteNonQuery()
                    Return True
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Throw New Exception("Error al eliminar el servicio: " & ex.Message)
            End Try
        End Using
    End Function

    ' Método para obtener un servicio por su ID
    Public Function ObtenerPorId(id As String) As Servicio
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "SELECT * FROM Servicio WHERE Id = @Id"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Id", id)
                    Using reader As SqlDataReader = command.ExecuteReader()
                        If reader.Read() Then
                            Dim servicio As New Servicio()
                            servicio.Id = reader("Id").ToString()
                            servicio.Tipo = reader("Tipo").ToString()
                            servicio.Modelo_Coche = reader("Modelo_Coche").ToString()
                            servicio.Descripcion = reader("Descripcion").ToString()
                            servicio.Estado_Servicio = reader("Estado_Servicio").ToString()
                            servicio.Costo_Estimado = Convert.ToDecimal(reader("Costo_Estimado"))
                            servicio.Fecha_Inicio = Convert.ToDateTime(reader("Fecha_Inicio"))
                            servicio.Hora = TimeSpan.Parse(reader("Hora").ToString())
                            servicio.Clientes_Id = reader("Clientes_Id").ToString()
                            servicio.Autos_Id = Convert.ToInt32(reader("Autos_Id"))
                            servicio.Fecha_Entrega = Convert.ToDateTime(reader("Fecha_Entrega"))
                            Return servicio
                        Else
                            Return Nothing
                        End If
                    End Using
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Throw New Exception("Error al obtener el servicio por ID: " & ex.Message)
            End Try
        End Using
    End Function

    ' Método para obtener todos los servicios
    Public Function ObtenerTodos() As List(Of Servicio)
        Dim listaServicios As New List(Of Servicio)()
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "SELECT * FROM Servicio"
                Using command As New SqlCommand(query, connection)
                    Using reader As SqlDataReader = command.ExecuteReader()
                        While reader.Read()
                            Dim servicio As New Servicio()
                            servicio.Id = reader("Id").ToString()
                            servicio.Tipo = reader("Tipo").ToString()
                            servicio.Modelo_Coche = reader("Modelo_Coche").ToString()
                            servicio.Descripcion = reader("Descripcion").ToString()
                            servicio.Estado_Servicio = reader("Estado_Servicio").ToString()
                            servicio.Costo_Estimado = Convert.ToDecimal(reader("Costo_Estimado"))
                            servicio.Fecha_Inicio = Convert.ToDateTime(reader("Fecha_Inicio"))
                            servicio.Hora = TimeSpan.Parse(reader("Hora").ToString())
                            servicio.Clientes_Id = reader("Clientes_Id").ToString()
                            servicio.Autos_Id = Convert.ToInt32(reader("Autos_Id"))
                            servicio.Fecha_Entrega = Convert.ToDateTime(reader("Fecha_Entrega"))
                            listaServicios.Add(servicio)
                        End While
                    End Using
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Throw New Exception("Error al obtener todos los servicios: " & ex.Message)
            End Try
        End Using
        Return listaServicios
    End Function

    Public Function CalcularCostoPiezasServicio(servicioId As String) As Decimal
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "SELECT dbo.CalcularCostoPiezasServicio(@Servicio_Id)"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Servicio_Id", servicioId)
                    Dim result As Object = command.ExecuteScalar()
                    If result IsNot Nothing Then
                        Return Convert.ToDecimal(result)
                    Else
                        Return 0
                    End If
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Throw New Exception("Error al calcular el costo de las piezas del servicio: " & ex.Message)
            End Try
        End Using
    End Function

    Public Sub ActualizarCostoEstimadoServicio(servicioId As String)
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "EXEC dbo.ActualizarCostoEstimadoServicio @Servicio_Id"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Servicio_Id", servicioId)
                    command.ExecuteNonQuery()
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Throw New Exception("Error al actualizar el costo estimado del servicio: " & ex.Message)
            End Try
        End Using
    End Sub

End Class

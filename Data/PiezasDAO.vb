Imports System.Data.SqlClient

Public Class PiezasDAO
    ' DAO
    Private conexion As Conexion = Conexion.ObtenerInstancia()

    ' Método para insertar una nueva pieza
    Public Function Insertar(pieza As Piezas) As Boolean
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "INSERT INTO Piezas (Id, Nombre, Marca, Proveedor, Existencias, Precio_Unitario) VALUES (@Id, @Nombre, @Marca, @Proveedor, @Existencias, @Precio_Unitario)"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Id", pieza.Id)
                    command.Parameters.AddWithValue("@Nombre", pieza.Nombre)
                    command.Parameters.AddWithValue("@Marca", pieza.Marca)
                    command.Parameters.AddWithValue("@Proveedor", pieza.Proveedor)
                    command.Parameters.AddWithValue("@Existencias", pieza.Existencias)
                    command.Parameters.AddWithValue("@Precio_Unitario", pieza.Precio_Unitario)
                    command.ExecuteNonQuery()
                    Return True
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Throw New Exception("Error al insertar la pieza: " & ex.Message)
            End Try
        End Using
    End Function

    ' Método para actualizar una pieza existente
    Public Function Actualizar(pieza As Piezas) As Boolean
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "UPDATE Piezas SET Nombre = @Nombre, Marca = @Marca, Proveedor = @Proveedor, Existencias = @Existencias, Precio_Unitario = @Precio_Unitario WHERE Id = @Id"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Id", pieza.Id)
                    command.Parameters.AddWithValue("@Nombre", pieza.Nombre)
                    command.Parameters.AddWithValue("@Marca", pieza.Marca)
                    command.Parameters.AddWithValue("@Proveedor", pieza.Proveedor)
                    command.Parameters.AddWithValue("@Existencias", pieza.Existencias)
                    command.Parameters.AddWithValue("@Precio_Unitario", pieza.Precio_Unitario)
                    command.ExecuteNonQuery()
                    Return True
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Throw New Exception("Error al actualizar la pieza: " & ex.Message)
            End Try
        End Using
    End Function

    ' Método para eliminar una pieza
    Public Function Eliminar(id As String) As Boolean
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "DELETE FROM Piezas WHERE Id = @Id"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Id", id)
                    command.ExecuteNonQuery()
                    Return True
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Throw New Exception("Error al eliminar la pieza: " & ex.Message)
            End Try
        End Using
    End Function

    ' Método para obtener una pieza por su ID
    Public Function ObtenerPorId(id As String) As Piezas
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "SELECT * FROM Piezas WHERE Id = @Id"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Id", id)
                    Using reader As SqlDataReader = command.ExecuteReader()
                        If reader.Read() Then
                            Dim pieza As New Piezas()
                            pieza.Id = reader("Id").ToString()
                            pieza.Nombre = reader("Nombre").ToString()
                            pieza.Marca = reader("Marca").ToString()
                            pieza.Proveedor = reader("Proveedor").ToString()
                            pieza.Existencias = Convert.ToInt32(reader("Existencias"))
                            pieza.Precio_Unitario = Convert.ToDecimal(reader("Precio_Unitario"))
                            Return pieza
                        Else
                            Return Nothing
                        End If
                    End Using
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Throw New Exception("Error al obtener la pieza: " & ex.Message)
            End Try
        End Using
    End Function

    ' Método para obtener todas las piezas
    Public Function ObtenerTodos() As List(Of Piezas)
        Dim listaPiezas As New List(Of Piezas)()
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "SELECT * FROM Piezas"
                Using command As New SqlCommand(query, connection)
                    Using reader As SqlDataReader = command.ExecuteReader()
                        While reader.Read()
                            Dim pieza As New Piezas()
                            pieza.Id = reader("Id").ToString()
                            pieza.Nombre = reader("Nombre").ToString()
                            pieza.Marca = reader("Marca").ToString()
                            pieza.Proveedor = reader("Proveedor").ToString()
                            pieza.Existencias = Convert.ToInt32(reader("Existencias"))
                            pieza.Precio_Unitario = Convert.ToDecimal(reader("Precio_Unitario"))
                            listaPiezas.Add(pieza)
                        End While
                    End Using
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Throw New Exception("Error al obtener todas las piezas: " & ex.Message)
            End Try
        End Using
        Return listaPiezas
    End Function
End Class
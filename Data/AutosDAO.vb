' /Data/AutosDAO.vb o /Services/AutosDAO.vb
Imports System.Data.SqlClient

Public Class AutosDAO
    ' DAO
    Private conexion As Conexion = Conexion.ObtenerInstancia()

    ' Método para insertar un nuevo auto
    Public Function Insertar(auto As Autos) As Boolean
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "INSERT INTO Autos (Id, Marca, Modelo, Color, Tipo, Clientes_Id) VALUES (@Id, @Marca, @Modelo, @Color, @Tipo, @Clientes_Id)"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Id", auto.Id)
                    command.Parameters.AddWithValue("@Marca", auto.Marca)
                    command.Parameters.AddWithValue("@Modelo", auto.Modelo)
                    command.Parameters.AddWithValue("@Color", auto.Color)
                    command.Parameters.AddWithValue("@Tipo", auto.Tipo)
                    command.Parameters.AddWithValue("@Clientes_Id", auto.ClientesId)
                    command.ExecuteNonQuery()
                    Return True
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Return False
            End Try
        End Using
    End Function

    ' Método para actualizar un auto existente
    Public Function Actualizar(auto As Autos) As Boolean
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "UPDATE Autos SET Marca = @Marca, Modelo = @Modelo, Color = @Color, Tipo = @Tipo, Clientes_Id = @Clientes_Id WHERE Id = @Id"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Id", auto.Id)
                    command.Parameters.AddWithValue("@Marca", auto.Marca)
                    command.Parameters.AddWithValue("@Modelo", auto.Modelo)
                    command.Parameters.AddWithValue("@Color", auto.Color)
                    command.Parameters.AddWithValue("@Tipo", auto.Tipo)
                    command.Parameters.AddWithValue("@Clientes_Id", auto.ClientesId)
                    command.ExecuteNonQuery()
                    Return True
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Return False
            End Try
        End Using
    End Function

    ' Método para eliminar un auto
    Public Function Eliminar(id As Integer) As Boolean
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "DELETE FROM Autos WHERE Id = @Id"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Id", id)
                    command.ExecuteNonQuery()
                    Return True
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Return False
            End Try
        End Using
    End Function

    ' Método para obtener un auto por su ID
    Public Function ObtenerPorId(id As Integer) As Autos
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "SELECT * FROM Autos WHERE Id = @Id"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Id", id)
                    Using reader As SqlDataReader = command.ExecuteReader()
                        If reader.Read() Then
                            Dim auto As New Autos()
                            auto.Id = Convert.ToInt32(reader("Id"))
                            auto.Marca = reader("Marca").ToString()
                            auto.Modelo = reader("Modelo").ToString()
                            auto.Color = reader("Color").ToString()
                            auto.Tipo = reader("Tipo").ToString()
                            auto.ClientesId = reader("Clientes_Id").ToString()
                            Return auto
                        Else
                            Return Nothing
                        End If
                    End Using
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Return Nothing
            End Try
        End Using
    End Function

    ' Método para obtener todos los autos
    Public Function ObtenerTodos() As List(Of Autos)
        Dim listaAutos As New List(Of Autos)()
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "SELECT * FROM Autos"
                Using command As New SqlCommand(query, connection)
                    Using reader As SqlDataReader = command.ExecuteReader()
                        While reader.Read()
                            Dim auto As New Autos()
                            auto.Id = Convert.ToInt32(reader("Id"))
                            auto.Marca = reader("Marca").ToString()
                            auto.Modelo = reader("Modelo").ToString()
                            auto.Color = reader("Color").ToString()
                            auto.Tipo = reader("Tipo").ToString()
                            auto.ClientesId = reader("Clientes_Id").ToString()
                            listaAutos.Add(auto)
                        End While
                    End Using
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Return listaAutos
            End Try
        End Using
        Return listaAutos
    End Function
End Class
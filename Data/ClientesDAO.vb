Imports System.Data.SqlClient

Public Class ClientesDAO
    ' DAO
    Private conexion As Conexion = conexion.ObtenerInstancia()

    ' Método para insertar un nuevo cliente
    Public Function Insertar(cliente As Clientes) As Boolean
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "INSERT INTO Clientes (Id, Nombre, Ap_Paterno, Ap_Materno, Direccion, Telefono, Frecuente) VALUES (@Id, @Nombre, @Ap_Paterno, @Ap_Materno, @Direccion, @Telefono, @Frecuente)"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Id", cliente.Id)
                    command.Parameters.AddWithValue("@Nombre", cliente.Nombre)
                    command.Parameters.AddWithValue("@Ap_Paterno", cliente.ApPaterno)
                    command.Parameters.AddWithValue("@Ap_Materno", cliente.ApMaterno)
                    command.Parameters.AddWithValue("@Direccion", cliente.Direccion)
                    command.Parameters.AddWithValue("@Telefono", cliente.Telefono)
                    command.Parameters.AddWithValue("@Frecuente", cliente.Frecuente)
                    command.ExecuteNonQuery()
                    Return True
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Return False
            End Try
        End Using
    End Function

    ' Método para actualizar un cliente existente
    Public Function Actualizar(cliente As Clientes) As Boolean
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "UPDATE Clientes SET Nombre = @Nombre, Ap_Paterno = @Ap_Paterno, Ap_Materno = @Ap_Materno, Direccion = @Direccion, Telefono = @Telefono, Frecuente = @Frecuente WHERE Id = @Id"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Id", cliente.Id)
                    command.Parameters.AddWithValue("@Nombre", cliente.Nombre)
                    command.Parameters.AddWithValue("@Ap_Paterno", cliente.ApPaterno)
                    command.Parameters.AddWithValue("@Ap_Materno", cliente.ApMaterno)
                    command.Parameters.AddWithValue("@Direccion", cliente.Direccion)
                    command.Parameters.AddWithValue("@Telefono", cliente.Telefono)
                    command.Parameters.AddWithValue("@Frecuente", cliente.Frecuente)
                    command.ExecuteNonQuery()
                    Return True
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Return False
            End Try
        End Using
    End Function

    ' Método para eliminar un cliente
    Public Function Eliminar(id As String) As Boolean
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "DELETE FROM Clientes WHERE Id = @Id"
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

    ' Método para obtener un cliente por su ID
    Public Function ObtenerPorId(id As String) As Clientes
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "SELECT * FROM Clientes WHERE Id = @Id"
                Using command As New SqlCommand(query, connection)
                    command.Parameters.AddWithValue("@Id", id)
                    Using reader As SqlDataReader = command.ExecuteReader()
                        If reader.Read() Then
                            Dim cliente As New Clientes()
                            cliente.Id = reader("Id").ToString()
                            cliente.Nombre = reader("Nombre").ToString()
                            cliente.ApPaterno = reader("Ap_Paterno").ToString()
                            cliente.ApMaterno = reader("Ap_Materno").ToString()
                            cliente.Direccion = reader("Direccion").ToString()
                            cliente.Telefono = reader("Telefono").ToString()
                            cliente.Frecuente = reader("Frecuente").ToString()
                            Return cliente
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

    ' Método para obtener todos los clientes
    Public Function ObtenerTodos() As List(Of Clientes)
        Dim listaClientes As New List(Of Clientes)()
        Using connection As SqlConnection = conexion.ObtenerConexion()
            Try
                connection.Open()
                Dim query As String = "SELECT * FROM Clientes"
                Using command As New SqlCommand(query, connection)
                    Using reader As SqlDataReader = command.ExecuteReader()
                        While reader.Read()
                            Dim cliente As New Clientes()
                            cliente.Id = reader("Id").ToString()
                            cliente.Nombre = reader("Nombre").ToString()
                            cliente.ApPaterno = reader("Ap_Paterno").ToString()
                            cliente.ApMaterno = reader("Ap_Materno").ToString()
                            cliente.Direccion = reader("Direccion").ToString()
                            cliente.Telefono = reader("Telefono").ToString()
                            cliente.Frecuente = reader("Frecuente").ToString()
                            listaClientes.Add(cliente)
                        End While
                    End Using
                End Using
            Catch ex As Exception
                ' Manejo de errores
                Return listaClientes
            End Try
        End Using
        Return listaClientes
    End Function
End Class

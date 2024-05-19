Public Class Autos
    ' Propiedades de la clase
    Public Property Id As Integer
    Public Property Marca As String
    Public Property Modelo As String
    Public Property Color As String
    Public Property Tipo As String
    Public Property ClientesId As String

    ' Constructor sin parámetros
    Public Sub New()
    End Sub

    ' Constructor con parámetros
    Public Sub New(id As Integer, marca As String, modelo As String, color As String, tipo As String, clientesId As String)
        Me.Id = id
        Me.Marca = marca
        Me.Modelo = modelo
        Me.Color = color
        Me.Tipo = tipo
        Me.ClientesId = clientesId
    End Sub
End Class

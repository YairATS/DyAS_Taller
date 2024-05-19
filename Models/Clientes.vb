Public Class Clientes
    ' Propiedades de la clase
    Public Property Id As String
    Public Property Nombre As String
    Public Property ApPaterno As String
    Public Property ApMaterno As String
    Public Property Direccion As String
    Public Property Telefono As String
    Public Property Frecuente As String

    ' Constructor sin parámetros
    Public Sub New()
    End Sub

    ' Constructor con parámetros
    Public Sub New(id As String, nombre As String, apPaterno As String, apMaterno As String, direccion As String, telefono As String, frecuente As String)
        Me.Id = id
        Me.Nombre = nombre
        Me.ApPaterno = apPaterno
        Me.ApMaterno = apMaterno
        Me.Direccion = direccion
        Me.Telefono = telefono
        Me.Frecuente = frecuente
    End Sub

End Class

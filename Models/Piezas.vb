Public Class Piezas
    ' Propiedades de la clase
    Public Property Id As String
    Public Property Nombre As String
    Public Property Marca As String
    Public Property Proveedor As String
    Public Property Existencias As Integer
    Public Property Precio_Unitario As Decimal

    ' Constructor sin parámetros
    Public Sub New()
    End Sub

    ' Constructor con parámetros
    Public Sub New(id As String, nombre As String, marca As String, proveedor As String, existencias As Integer, precio_Unitario As Decimal)
        Me.Id = id
        Me.Nombre = nombre
        Me.Marca = marca
        Me.Proveedor = proveedor
        Me.Existencias = existencias
        Me.Precio_Unitario = precio_Unitario
    End Sub
End Class

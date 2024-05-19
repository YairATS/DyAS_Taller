Public Class Servicio
    ' Propiedades de la clase
    Public Property Id As String
    Public Property Tipo As String
    Public Property Modelo_Coche As String
    Public Property Descripcion As String
    Public Property Estado_Servicio As String
    Public Property Costo_Estimado As Decimal
    Public Property Fecha_Inicio As Date
    Public Property Hora As TimeSpan
    Public Property Clientes_Id As String
    Public Property Autos_Id As Integer
    Public Property Fecha_Entrega As Date

    ' Constructor sin parámetros
    Public Sub New()
    End Sub

    ' Constructor con parámetros
    Public Sub New(id As String, tipo As String, modelo_Coche As String, descripcion As String, estado_Servicio As String, costo_Estimado As Decimal, fecha_Inicio As Date, hora As TimeSpan, clientes_Id As String, autos_Id As Integer, fecha_Entrega As Date)
        Me.Id = id
        Me.Tipo = tipo
        Me.Modelo_Coche = modelo_Coche
        Me.Descripcion = descripcion
        Me.Estado_Servicio = estado_Servicio
        Me.Costo_Estimado = costo_Estimado
        Me.Fecha_Inicio = fecha_Inicio
        Me.Hora = hora
        Me.Clientes_Id = clientes_Id
        Me.Autos_Id = autos_Id
        Me.Fecha_Entrega = fecha_Entrega
    End Sub
End Class
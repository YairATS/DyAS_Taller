Public Class Servicio_Piezas
    ' Propiedades de la clase
    Public Property Servicio_Id As String
    Public Property Piezas_Id As String

    ' Constructor sin parámetros
    Public Sub New()
    End Sub

    ' Constructor con parámetros
    Public Sub New(servicio_Id As String, piezas_Id As String)
        Me.Servicio_Id = servicio_Id
        Me.Piezas_Id = piezas_Id
    End Sub
End Class

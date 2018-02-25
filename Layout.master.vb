Imports System.Data
Imports System.Data.SqlClient
Partial Class Layout
    Inherits System.Web.UI.MasterPage
    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        If tbSearch.Text <> "" Then
            Dim strURL As String
            ' check the number of words in the textbox
            Dim strCheck As String = " "
            If Not Trim(tbSearch.Text).Contains(strCheck) Then
                Dim strConn As String = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionStringOnlineStore").ConnectionString
                Dim connProduct As SqlConnection
                Dim cmdProduct As SqlCommand
                Dim drProduct As SqlDataReader
                Dim strSQL As String = "Select * from Product Where ProductNo = '" & tbSearch.Text & "'"
                connProduct = New SqlConnection(strConn)
                cmdProduct = New SqlCommand(strSQL, connProduct)
                connProduct.Open()
                drProduct = cmdProduct.ExecuteReader(CommandBehavior.CloseConnection)
                If drProduct.Read() Then
                    strURL = "Product-Detail.aspx?SearchString=" + tbSearch.Text
                End If
            Else
                strURL = "Category.aspx?SearchString=" + tbSearch.Text
            End If
            Response.Write(strURL)
            Response.Redirect(strURL)
        End If
    End Sub
End Class


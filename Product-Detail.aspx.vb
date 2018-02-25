Imports System.Data
Imports System.Data.SqlClient
Partial Class Product_Detail
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Request.QueryString("ProductID") <> "" Then
            Dim strConn As String = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionStringOnlineStore").ConnectionString
            Dim connProduct As SqlConnection
            Dim cmdProduct As SqlCommand
            Dim drProduct As SqlDataReader
            Dim strSQL As String = "Select * from Product Where ProductID = " & Request.QueryString("ProductID")
            connProduct = New SqlConnection(strConn)
            cmdProduct = New SqlCommand(strSQL, connProduct)
            connProduct.Open()
            drProduct = cmdProduct.ExecuteReader(CommandBehavior.CloseConnection)
            'drProduct.Read()
            If drProduct.Read() Then
                lblProductName.Text = drProduct.Item("ProductName")
                lblProductDescription.Text = drProduct.Item("ProductDescription")
                lblPrice.Text = drProduct.Item("Price")
                lblProductNo.Text = drProduct.Item("ProductNo")
                'imgProduct.ImageUrl = "img/product-detail/" + Trim(drProduct.Item("ProductNo")) + ".jpg"
            End If
        End If
    End Sub
    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        Dim drCartLine As SqlDataReader
        Dim strSQLStatement As String
        Dim cmdSQL As SqlCommand
        Dim strConnectionString As String = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionStringOnlineStore").ConnectionString
        Dim conn As New SqlConnection(strConnectionString)
        conn.Open()
        ' *** get product price
        strSQLStatement = "SELECT * FROM Product WHERE ProductNo = '" & lblProductNo.Text & "'"
        cmdSQL = New SqlCommand(strSQLStatement, conn)
        drCartLine = cmdSQL.ExecuteReader()
        Dim sngPrice As Single
        If drCartLine.Read() Then
            sngPrice = drCartLine.Item("Price")
        End If
        '*** get CartID
        Dim strCartID As String
        If HttpContext.Current.Request.Cookies("CartID") Is Nothing Then
            strCartID = GetRandomCartIDUsingGUID(10)
            Dim CookieTo As New HttpCookie("CartID", strCartID)
            HttpContext.Current.Response.AppendCookie(CookieTo)
        Else
            Dim CookieBack As HttpCookie
            CookieBack = HttpContext.Current.Request.Cookies("CartID")
            strCartID = CookieBack.Value
        End If
        conn.Close()

        ' figure out if this product already exits in the cart
        ' hint: before you issue the insert command, you check the cart
        strSQLStatement = "INSERT INTO Cart (CartID, ProductID, ProductName, Quantity, Price) values('" & strCartID & "', '" & Trim(lblProductNo.Text) & "', '" & lblProductName.Text & "', " & CInt(tbQuantity.Value) & ", " & sngPrice & ")"
        cmdSQL = New SqlCommand(strSQLStatement, conn)
        conn.Open()
        drCartLine = cmdSQL.ExecuteReader(CommandBehavior.CloseConnection)
        Response.Redirect("ViewCart.aspx")
    End Sub

    Public Function GetRandomCartIDUsingGUID(ByVal length As Integer) As String
        'Get the GUID
        Dim guidResult As String = System.Guid.NewGuid().ToString()
        'Remove the hyphens
        guidResult = guidResult.Replace("-", String.Empty)
        'Make sure length is valid
        If length <= 0 OrElse length > guidResult.Length Then
            Throw New ArgumentException("Length must be between 1 and " & guidResult.Length)
        End If
        'Return the first length bytes
        Return guidResult.Substring(0, length)
    End Function
End Class

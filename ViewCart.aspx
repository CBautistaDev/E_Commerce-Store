<%@ Page Title="" Language="VB" MasterPageFile="~/Layout.master" AutoEventWireup="false" CodeFile="ViewCart.aspx.vb" Inherits="ViewCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
           
                                <asp:SqlDataSource ID="sqlDSCart" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionStringOnlineStore %>"> 
                                </asp:SqlDataSource>

                                <asp:LinkButton ID="btnEmpty" runat="server" Width="100px" Text="Empty Cart" />

                                <asp:ListView ID="lvCart" runat="server" DataSourceID="sqlDSCart"
                                    OnItemCommand="lvCart_OnItemCommand" CellPadding="3" DataKeyField="ID"
                                    CellSpacing="0" RepeatColumns="1" DataKeyNames="ID">

                               <LayoutTemplate>              
                                <div style="float: right; margin: 0 30px 5px 0;">
                                    <asp:Label ID="lblPage" runat="server" Text="" Font-Size="14px"></asp:Label>
                                </div><br />

                                <%--<div class="table-responsive">--%>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th colspan="2">Product</th>
                                                <th>Quantity</th>
                                                <th>Price</th>
                                                <%--<th>Discount</th>--%>
                                                <th colspan="2">SubTotal</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:PlaceHolder runat="server" ID="groupPlaceHolder" />
                                           
                                        </tbody>

                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <asp:PlaceHolder runat="server" id="itemPlaceholder"></asp:PlaceHolder>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <tr>
                                        
                                        <td>
                                            <h4><a href=""><%# Eval("ProductName")%></a></h4>
							                <p>Web ID: <%# Eval("ProductID")%></p>
                                            <%--<a href="#">White Blouse Armani</a>--%>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="tbQuantity" Text='<%# Eval("Quantity")%>' Width="50px" class="form-control" runat="server"></asp:TextBox>
                                            <asp:LinkButton runat="server" ID="lbUpdate" Text='Update'
                                                CommandName="cmdUpdate" CommandArgument='<%# Eval("ProductID")%>' />
                                            <%--<input type="number" value="2" class="form-control">--%>
                                        </td>
                                        <td>
                                            <%--$123.00--%>
                                            <p>$<%# Eval("Price")%></p>
                                        </td>

                                        <td>

                                            <p class="cart_total_price">$<%# Eval("Quantity")%>*<%# Eval("Price")%></p>
                                        </td>
                                        <td>
                                            <asp:LinkButton runat="server" ID="lbDelete" Text='Delete' 
                                              CommandName="cmdDelete" CommandArgument='<%# Eval("ProductID")%>' />

                                        </td>
                                    </tr>
					               
                                </ItemTemplate>
                                </asp:ListView>
                                <!-- /.table-responsive -->
                                <div style="padding: 8px;width: 100%;text-align: center;">
                                    <div style="display: inline-block; margin-top: 5px">
                                    <asp:Button runat="server" Text="&laquo;" id="show_prev" CssClass="show_prevx"></asp:Button>
                                    <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lvCart" PageSize="3">
                                        <Fields>        
                                        <asp:NumericPagerField NextPageText='&raquo;' PreviousPageText='&laquo;' ButtonCount="3" 
                                            ButtonType="Button" NextPreviousButtonCssClass="next_prevx" NumericButtonCssClass="numericx" 
                                            CurrentPageLabelCssClass="currentx" RenderNonBreakingSpacesBetweenControls="False" />
                                        </Fields>
                                    </asp:DataPager>
                                    <asp:Button runat="server" Text="&raquo;" id="show_next" CssClass="show_nextx"></asp:Button>
                                    </div>
                                </div>

                             
                    <!-- /.col-md-3 -->

</asp:Content>


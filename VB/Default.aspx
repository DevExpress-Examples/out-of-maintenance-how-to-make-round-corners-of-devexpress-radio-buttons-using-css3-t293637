<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .round .dxeIRadioButton_Metropolis {
            border-radius: 8px;
            -webkit-background-clip: padding-box;
            -moz-background-clip: padding-box;
            background-clip: padding-box;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="default">
            <b>Default:</b>
            <div style="background-color: #ff8800; width:125px">
                <dx:ASPxRadioButton runat="server" ID="radioButton1" Text="Item 1" GroupName="items1"></dx:ASPxRadioButton>
                <dx:ASPxRadioButton runat="server" ID="radioButton2" Text="Item 2" GroupName="items1"></dx:ASPxRadioButton>
                <br />
                <dx:ASPxRadioButtonList runat="server" ID="rbl1" DataSourceID="dsCategories" ValueField="CategoryID" ValueType="System.Int32" TextField="CategoryName"></dx:ASPxRadioButtonList>
            </div>

            <dx:ASPxGridView runat="server" AutoGenerateColumns="False" DataSourceID="dsProducts"
                KeyFieldName="ProductID" ID="grid1" ClientInstanceName="grid1">
                <SettingsBehavior AllowSelectSingleRowOnly="true" AllowFocusedRow="true" />
                <SettingsPager PageSize="4" NumericButtonCount="5"></SettingsPager>
                <Columns>
                    <dx:GridViewCommandColumn VisibleIndex="0" SelectAllCheckboxMode="Page" ShowSelectCheckbox="True" />
                    <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="QuantityPerUnit" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="10">
                    </dx:GridViewDataCheckColumn>
                </Columns>
            </dx:ASPxGridView>
        </div>
        <br />
        <div class="round">
            <b>Custom:</b>
            <div style="background-color: #ff8800; width:125px">
                <dx:ASPxRadioButton runat="server" ID="radioButton3" Text="Item 1" GroupName="items2"></dx:ASPxRadioButton>
                <dx:ASPxRadioButton runat="server" ID="radioButton4" Text="Item 2" GroupName="items2"></dx:ASPxRadioButton>
                <br />
                <dx:ASPxRadioButtonList runat="server" ID="rbl2" DataSourceID="dsCategories" ValueField="CategoryID" ValueType="System.Int32" TextField="CategoryName"></dx:ASPxRadioButtonList>
            </div>

            <dx:ASPxGridView runat="server" AutoGenerateColumns="False" DataSourceID="dsProducts"
                KeyFieldName="ProductID" ID="grid2" ClientInstanceName="grid2">
                <SettingsBehavior AllowSelectSingleRowOnly="true" AllowFocusedRow="true" />
                <SettingsPager PageSize="4" NumericButtonCount="5"></SettingsPager>
                <Columns>
                    <dx:GridViewCommandColumn VisibleIndex="0" SelectAllCheckboxMode="Page" ShowSelectCheckbox="True" />
                    <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="QuantityPerUnit" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="10">
                    </dx:GridViewDataCheckColumn>
                </Columns>
            </dx:ASPxGridView>
        </div>
        <asp:SqlDataSource ID="dsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued] FROM [Products]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="dsCategories" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="dsEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [City], [Region], [PostalCode], [Country], [HomePhone], [Photo], [Extension], [Notes], [ReportsTo], [PhotoPath] FROM [Employees]"></asp:SqlDataSource>
    </form>
</body>
</html>
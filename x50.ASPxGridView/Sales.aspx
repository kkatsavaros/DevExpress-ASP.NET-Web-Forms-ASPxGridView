<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="x50.ASPxGridView.Sales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftPanelContent" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="RightPanelContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PageToolbar" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="PageContent" runat="server">

    <dx:ASPxGridView ID="ASPxGridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="id">

        <SettingsPager Visible="False">
        </SettingsPager>

        <Settings ShowHeaderFilterButton="True" />

        <SettingsPopup>
            <FilterControl AutoUpdatePosition="False"></FilterControl>
        </SettingsPopup>

        <SettingsSearchPanel Visible="True" />

        <Columns>
            <dx:GridViewDataTextColumn FieldName="id" ReadOnly="True" VisibleIndex="0">
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="name" VisibleIndex="1">
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="stathero" VisibleIndex="2">
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="kinito" VisibleIndex="3">
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="perioxi" VisibleIndex="4">
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="eidospolisis" VisibleIndex="5">
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="notes" VisibleIndex="6">
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="mylead" VisibleIndex="7">
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataDateColumn FieldName="mydate" VisibleIndex="8">
            </dx:GridViewDataDateColumn>
        </Columns>
    </dx:ASPxGridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyOteSalesConnectionString %>"
        DeleteCommand="DELETE FROM [author] WHERE [id] = @id"
        InsertCommand="INSERT INTO [author] ([id], [name], [stathero], [kinito], [perioxi], [eidospolisis], [notes], [mylead], [mydate]) VALUES (@id, @name, @stathero, @kinito, @perioxi, @eidospolisis, @notes, @mylead, @mydate)"
        SelectCommand="SELECT * FROM [author]"
        UpdateCommand="UPDATE [author] SET [name] = @name, [stathero] = @stathero, [kinito] = @kinito, [perioxi] = @perioxi, [eidospolisis] = @eidospolisis, [notes] = @notes, [mylead] = @mylead, [mydate] = @mydate WHERE [id] = @id">

        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>

        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="stathero" Type="String" />
            <asp:Parameter Name="kinito" Type="String" />
            <asp:Parameter Name="perioxi" Type="String" />
            <asp:Parameter Name="eidospolisis" Type="String" />
            <asp:Parameter Name="notes" Type="String" />
            <asp:Parameter Name="mylead" Type="String" />
            <asp:Parameter DbType="Date" Name="mydate" />
        </InsertParameters>

        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="stathero" Type="String" />
            <asp:Parameter Name="kinito" Type="String" />
            <asp:Parameter Name="perioxi" Type="String" />
            <asp:Parameter Name="eidospolisis" Type="String" />
            <asp:Parameter Name="notes" Type="String" />
            <asp:Parameter Name="mylead" Type="String" />
            <asp:Parameter DbType="Date" Name="mydate" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

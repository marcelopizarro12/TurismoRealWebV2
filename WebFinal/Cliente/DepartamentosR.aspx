<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente/PrincipalUsuario.Master" AutoEventWireup="true" CodeBehind="DepartamentosR.aspx.cs" Inherits="WebFinal.Cliente.Departamentos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="Index.aspx">Inicio</a></li>
          <li><a href="Departamentos.aspx">Departamentos</a></li>
        </ol>
        <h2>Departamentos en arriendo</h2>

      </div>
    </section>
    <!-- End Breadcrumbs -->
  <form runat="server">
        <div class="container-fluid margen_general">
     
        <div class="row">

            <!-- Inicio recuadro info depto-->
            <div class="col-md-3 col-sm-12">

                <h5>Filtros</h5>
                
                <div class="borde2" style="padding-bottom: 150%;">
    
                    <p>
                           <p class="auto-style1">
                          Buscador Por Zona</p>
                            <p class="auto-style1">
                      <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Selected="True" Value="Elija zona de Busqueda">Elija zona de Busqueda</asp:ListItem>
                <asp:ListItem>VIÑA DEL MAR</asp:ListItem>
                <asp:ListItem>PUCÓN</asp:ListItem>
                <asp:ListItem>PUERTO VARAS</asp:ListItem>
                <asp:ListItem>LA SERENA</asp:ListItem>
            </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
                    </p>
    
                </div>
            
            </div>
            <!-- Termino recuadro info depto-->

            <!-- Inicio recuadro reserva-->
            <div class="col-md-8 offset-md-1 col-sm-12">
                
                <h5>Resultados</h5>
                
                <div class="borde2" style="padding-bottom: 50%;">

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="208px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" Width="806px">
                  <AlternatingRowStyle BackColor="#F7F7F7" />
                 <Columns>
                        <asp:CommandField ShowSelectButton="True" SelectText="Ir a Reservar" />
                       <asp:ImageField DataImageUrlField="id_depto" DataImageUrlFormatString="~/ImgDpto/{0}.jpg">
                       </asp:ImageField>
                      <asp:TemplateField HeaderText="DEPARTAMENTOS">
                          <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                     </EditItemTemplate>
                         <ItemTemplate>
                                Nro Departamento:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblid" runat="server" Text='<%# Eval("id_depto") %>'></asp:Label>
                               &nbsp;&nbsp;&nbsp;
                               <br />
                         Ubicacion Departamento:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Label ID="lblubi" runat="server" Text='<%# Eval("direccion") %>'></asp:Label>
                               <br />
                               Descripcion del Departamento:
                                    <asp:Label ID="lbldesc" runat="server" Text='<%# Eval("descripcion") %>'></asp:Label>
                                <br />
                             Precio por Noche:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Label ID="lblprice" runat="server" Text='<%# Eval("precio") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                 </Columns>
                   <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                   <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                   <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                   <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                   <SortedAscendingCellStyle BackColor="#F4F4FD" />
                   <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                   <SortedDescendingHeaderStyle BackColor="#3E3277" />
                  </asp:GridView>
    
                </div>
            
            </div>
            <!-- Termino recuadro reserva-->
            
        </div>
    
   </div>
</form>

  </main><!-- End #main -->


</asp:Content>

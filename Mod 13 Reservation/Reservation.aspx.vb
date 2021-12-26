Public Class Reservation
    Inherits System.Web.UI.Page
    Dim connect As New OleDb.OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Barry\OneDrive\computer science\Visual Basic\Week13\Exercise 1\Reservation.mdb")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Visible = False
        connect.Open()
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            Dim grizzly, polar, kodiak, total As Double
            Dim room As Integer

            grizzly = 99.0
            polar = 89.0
            kodiak = 79.0
            room = Int32.Parse(DropDownList1.Text.ToString())

            'invalid date
            If Calendar1.SelectedDate < Calendar1.TodaysDate Then
                Response.Write("<br>Choose a later date.<br>")

                'didn't select room
            ElseIf (RadioButtonList1.SelectedIndex = -1) Then
                Response.Write("Please check a room. <br>")

                '3 bedrooms
            ElseIf RadioButtonList1.SelectedIndex = 0 Then
                total = room * grizzly
                Label1.Visible = True
                Label1.Text = "Welcome " & TextBox1.Text & "<br>" &
                    "Email Address Confirmation: " & TextBox2.Text & "<br>" &
                    "Cabin confirmation: " & RadioButtonList1.Text & "<br>" &
                    "Night confirmation: " & DropDownList1.Text & "<br>" &
                    "Date of reservation: " & Calendar1.SelectedDate & "<br>" &
                    "Cost of reservation: " & total.ToString("C") & "<br>"

                '2 bedrooms
            ElseIf RadioButtonList1.SelectedIndex = 1 Then
                total = room * polar
                Label1.Visible = True
                Label1.Text = "Welcome " & TextBox1.Text & "<br>" &
                    "Email Address Confirmation: " & TextBox2.Text & "<br>" &
                    "Cabin confirmation: " & RadioButtonList1.Text & "<br>" &
                    "Night confirmation: " & DropDownList1.Text & "<br>" &
                    "Date of reservation: " & Calendar1.SelectedDate & "<br>" &
                    "Cost of reservation: " & total.ToString("C") & "<br>"

                '1 bedrooms
            ElseIf RadioButtonList1.SelectedIndex = 2 Then
                total = room * kodiak
                Label1.Visible = True
                Label1.Text = "Welcome " & TextBox1.Text & "<br>" &
                    "Email Address Confirmation: " & TextBox2.Text & "<br>" &
                    "Cabin confirmation: " & RadioButtonList1.Text & "<br>" &
                    "Night confirmation: " & DropDownList1.Text & "<br>" &
                    "Date of reservation: " & Calendar1.SelectedDate & "<br>" &
                    "Cost of reservation: " & total.ToString("C") & "<br>"
            End If

            Dim command As New OleDb.OleDbCommand("Insert into [Reservation] ([Name],[Email Address],[Cabin Selection],[Night],[Check-in])
             values ('" & TextBox1.Text & "' , '" & TextBox2.Text & "' , '" & RadioButtonList1.Text & "' , '" & DropDownList1.Text & "' , '" &
            Calendar1.SelectedDate & "')", connect)

            command.ExecuteNonQuery()

            connect.Close()

            Response.Write("Completed.")

        Catch ex As Exception
            Response.Write(ex.ToString)
        End Try
    End Sub
End Class
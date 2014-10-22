<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.MenuStrip1 = New System.Windows.Forms.MenuStrip()
        Me.JogoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.InserirJogoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.AlterarJogoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.RemoverJogoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.UsuárioDeSistemaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.InserirUsuárioDeSistemaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.AlterarUsuárioDeSistemaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.RemoverUsuárioDeSistemaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'MenuStrip1
        '
        Me.MenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.JogoToolStripMenuItem, Me.UsuárioDeSistemaToolStripMenuItem})
        Me.MenuStrip1.Location = New System.Drawing.Point(0, 0)
        Me.MenuStrip1.Name = "MenuStrip1"
        Me.MenuStrip1.Size = New System.Drawing.Size(1370, 28)
        Me.MenuStrip1.TabIndex = 0
        Me.MenuStrip1.Text = "MenuStrip1"
        '
        'JogoToolStripMenuItem
        '
        Me.JogoToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.InserirJogoToolStripMenuItem, Me.AlterarJogoToolStripMenuItem, Me.RemoverJogoToolStripMenuItem})
        Me.JogoToolStripMenuItem.Name = "JogoToolStripMenuItem"
        Me.JogoToolStripMenuItem.Size = New System.Drawing.Size(53, 24)
        Me.JogoToolStripMenuItem.Text = "Jogo"
        '
        'InserirJogoToolStripMenuItem
        '
        Me.InserirJogoToolStripMenuItem.Name = "InserirJogoToolStripMenuItem"
        Me.InserirJogoToolStripMenuItem.Size = New System.Drawing.Size(175, 24)
        Me.InserirJogoToolStripMenuItem.Text = "Inserir jogo"
        '
        'AlterarJogoToolStripMenuItem
        '
        Me.AlterarJogoToolStripMenuItem.Name = "AlterarJogoToolStripMenuItem"
        Me.AlterarJogoToolStripMenuItem.Size = New System.Drawing.Size(175, 24)
        Me.AlterarJogoToolStripMenuItem.Text = "Alterar jogo"
        '
        'RemoverJogoToolStripMenuItem
        '
        Me.RemoverJogoToolStripMenuItem.Name = "RemoverJogoToolStripMenuItem"
        Me.RemoverJogoToolStripMenuItem.Size = New System.Drawing.Size(175, 24)
        Me.RemoverJogoToolStripMenuItem.Text = "Remover jogo"
        '
        'UsuárioDeSistemaToolStripMenuItem
        '
        Me.UsuárioDeSistemaToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.InserirUsuárioDeSistemaToolStripMenuItem, Me.AlterarUsuárioDeSistemaToolStripMenuItem, Me.RemoverUsuárioDeSistemaToolStripMenuItem})
        Me.UsuárioDeSistemaToolStripMenuItem.Name = "UsuárioDeSistemaToolStripMenuItem"
        Me.UsuárioDeSistemaToolStripMenuItem.Size = New System.Drawing.Size(146, 24)
        Me.UsuárioDeSistemaToolStripMenuItem.Text = "Usuário de sistema"
        '
        'InserirUsuárioDeSistemaToolStripMenuItem
        '
        Me.InserirUsuárioDeSistemaToolStripMenuItem.Name = "InserirUsuárioDeSistemaToolStripMenuItem"
        Me.InserirUsuárioDeSistemaToolStripMenuItem.Size = New System.Drawing.Size(266, 24)
        Me.InserirUsuárioDeSistemaToolStripMenuItem.Text = "Inserir usuário de sistema"
        '
        'AlterarUsuárioDeSistemaToolStripMenuItem
        '
        Me.AlterarUsuárioDeSistemaToolStripMenuItem.Name = "AlterarUsuárioDeSistemaToolStripMenuItem"
        Me.AlterarUsuárioDeSistemaToolStripMenuItem.Size = New System.Drawing.Size(266, 24)
        Me.AlterarUsuárioDeSistemaToolStripMenuItem.Text = "Alterar usuário de sistema"
        '
        'RemoverUsuárioDeSistemaToolStripMenuItem
        '
        Me.RemoverUsuárioDeSistemaToolStripMenuItem.Name = "RemoverUsuárioDeSistemaToolStripMenuItem"
        Me.RemoverUsuárioDeSistemaToolStripMenuItem.Size = New System.Drawing.Size(266, 24)
        Me.RemoverUsuárioDeSistemaToolStripMenuItem.Text = "Remover Usuário de sistema"
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 16.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1370, 573)
        Me.Controls.Add(Me.MenuStrip1)
        Me.MainMenuStrip = Me.MenuStrip1
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.MenuStrip1.ResumeLayout(False)
        Me.MenuStrip1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents MenuStrip1 As System.Windows.Forms.MenuStrip
    Friend WithEvents JogoToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents InserirJogoToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents AlterarJogoToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents RemoverJogoToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents UsuárioDeSistemaToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents InserirUsuárioDeSistemaToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents AlterarUsuárioDeSistemaToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents RemoverUsuárioDeSistemaToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem

End Class

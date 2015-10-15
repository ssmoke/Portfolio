﻿namespace LIFES.UserInterfaces
{
    partial class ViewTotalEnrollmentsForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ViewTotalEnrollmentsForm));
            this.TimesGridView = new System.Windows.Forms.DataGridView();
            this.dayCol = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.classCol = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.enrollmentCol = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel1 = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.TimesGridView)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // TimesGridView
            // 
            this.TimesGridView.AllowUserToAddRows = false;
            this.TimesGridView.AllowUserToDeleteRows = false;
            this.TimesGridView.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.TimesGridView.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.TimesGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.TimesGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dayCol,
            this.classCol,
            this.enrollmentCol});
            this.TimesGridView.Location = new System.Drawing.Point(35, 40);
            this.TimesGridView.Name = "TimesGridView";
            this.TimesGridView.ReadOnly = true;
            this.TimesGridView.Size = new System.Drawing.Size(560, 376);
            this.TimesGridView.TabIndex = 0;
            // 
            // dayCol
            // 
            this.dayCol.HeaderText = "Day";
            this.dayCol.Name = "dayCol";
            this.dayCol.ReadOnly = true;
            // 
            // classCol
            // 
            this.classCol.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.classCol.DefaultCellStyle = dataGridViewCellStyle1;
            this.classCol.HeaderText = "Class Time";
            this.classCol.Name = "classCol";
            this.classCol.ReadOnly = true;
            this.classCol.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            // 
            // enrollmentCol
            // 
            this.enrollmentCol.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.enrollmentCol.HeaderText = "Enrollment";
            this.enrollmentCol.Name = "enrollmentCol";
            this.enrollmentCol.ReadOnly = true;
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel1.BackColor = System.Drawing.Color.White;
            this.panel1.Controls.Add(this.TimesGridView);
            this.panel1.Location = new System.Drawing.Point(75, 55);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(630, 451);
            this.panel1.TabIndex = 1;
            // 
            // ViewTotalEnrollmentsForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(70)))), ((int)(((byte)(22)))), ((int)(((byte)(107)))));
            this.ClientSize = new System.Drawing.Size(784, 562);
            this.Controls.Add(this.panel1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "ViewTotalEnrollmentsForm";
            this.Text = "Total Enrollments";
            ((System.ComponentModel.ISupportInitialize)(this.TimesGridView)).EndInit();
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView TimesGridView;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dayCol;
        private System.Windows.Forms.DataGridViewTextBoxColumn classCol;
        private System.Windows.Forms.DataGridViewTextBoxColumn enrollmentCol;
    }
}
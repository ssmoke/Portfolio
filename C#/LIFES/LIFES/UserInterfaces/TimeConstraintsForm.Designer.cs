﻿namespace LIFES.UserInterfaces
{
    partial class TimeConstraintsForm
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(TimeConstraintsForm));
            this.chooseFileButton = new System.Windows.Forms.Button();
            this.numDaysTextBox = new System.Windows.Forms.TextBox();
            this.firstExamTimeTextBox = new System.Windows.Forms.TextBox();
            this.lengthOfExamsTextBox = new System.Windows.Forms.TextBox();
            this.lengthBetweenExamsTextBox = new System.Windows.Forms.TextBox();
            this.lunchPeriodTextBox = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.updateConstraintsButton = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.errorProvider1 = new System.Windows.Forms.ErrorProvider(this.components);
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider1)).BeginInit();
            this.SuspendLayout();
            // 
            // chooseFileButton
            // 
            this.chooseFileButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)));
            this.chooseFileButton.Location = new System.Drawing.Point(27, 17);
            this.chooseFileButton.Name = "chooseFileButton";
            this.chooseFileButton.Size = new System.Drawing.Size(102, 28);
            this.chooseFileButton.TabIndex = 0;
            this.chooseFileButton.Text = "Choose File";
            this.chooseFileButton.UseVisualStyleBackColor = true;
            this.chooseFileButton.Click += new System.EventHandler(this.ChooseFileButton_Click);
            // 
            // numDaysTextBox
            // 
            this.numDaysTextBox.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.numDaysTextBox.Location = new System.Drawing.Point(179, 65);
            this.numDaysTextBox.Name = "numDaysTextBox";
            this.numDaysTextBox.Size = new System.Drawing.Size(114, 20);
            this.numDaysTextBox.TabIndex = 1;
            // 
            // firstExamTimeTextBox
            // 
            this.firstExamTimeTextBox.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.firstExamTimeTextBox.Location = new System.Drawing.Point(179, 104);
            this.firstExamTimeTextBox.Name = "firstExamTimeTextBox";
            this.firstExamTimeTextBox.Size = new System.Drawing.Size(114, 20);
            this.firstExamTimeTextBox.TabIndex = 2;
            // 
            // lengthOfExamsTextBox
            // 
            this.lengthOfExamsTextBox.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lengthOfExamsTextBox.Location = new System.Drawing.Point(179, 145);
            this.lengthOfExamsTextBox.Name = "lengthOfExamsTextBox";
            this.lengthOfExamsTextBox.Size = new System.Drawing.Size(114, 20);
            this.lengthOfExamsTextBox.TabIndex = 3;
            // 
            // lengthBetweenExamsTextBox
            // 
            this.lengthBetweenExamsTextBox.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lengthBetweenExamsTextBox.Location = new System.Drawing.Point(179, 178);
            this.lengthBetweenExamsTextBox.Name = "lengthBetweenExamsTextBox";
            this.lengthBetweenExamsTextBox.Size = new System.Drawing.Size(114, 20);
            this.lengthBetweenExamsTextBox.TabIndex = 4;
            // 
            // lunchPeriodTextBox
            // 
            this.lunchPeriodTextBox.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lunchPeriodTextBox.Location = new System.Drawing.Point(179, 218);
            this.lunchPeriodTextBox.Name = "lunchPeriodTextBox";
            this.lunchPeriodTextBox.Size = new System.Drawing.Size(114, 20);
            this.lunchPeriodTextBox.TabIndex = 5;
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(24, 65);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(129, 13);
            this.label1.TabIndex = 6;
            this.label1.Text = "Number of Days of Exams";
            // 
            // label2
            // 
            this.label2.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(24, 104);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(93, 13);
            this.label2.TabIndex = 7;
            this.label2.Text = "Time of First Exam";
            // 
            // label3
            // 
            this.label3.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(24, 145);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(86, 13);
            this.label3.TabIndex = 8;
            this.label3.Text = "Length of Exams";
            // 
            // label4
            // 
            this.label4.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(24, 178);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(119, 13);
            this.label4.TabIndex = 9;
            this.label4.Text = "Length Between Exams";
            // 
            // label5
            // 
            this.label5.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(24, 218);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(118, 13);
            this.label5.TabIndex = 10;
            this.label5.Text = "Length of Lunch Period";
            // 
            // updateConstraintsButton
            // 
            this.updateConstraintsButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)));
            this.updateConstraintsButton.Location = new System.Drawing.Point(179, 17);
            this.updateConstraintsButton.Name = "updateConstraintsButton";
            this.updateConstraintsButton.Size = new System.Drawing.Size(110, 28);
            this.updateConstraintsButton.TabIndex = 11;
            this.updateConstraintsButton.Text = "Update Constraints";
            this.updateConstraintsButton.UseVisualStyleBackColor = true;
            this.updateConstraintsButton.Click += new System.EventHandler(this.UpdateConstraintsButton_Click);
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel1.BackColor = System.Drawing.Color.White;
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panel1.Controls.Add(this.updateConstraintsButton);
            this.panel1.Controls.Add(this.lunchPeriodTextBox);
            this.panel1.Controls.Add(this.label5);
            this.panel1.Controls.Add(this.lengthBetweenExamsTextBox);
            this.panel1.Controls.Add(this.chooseFileButton);
            this.panel1.Controls.Add(this.lengthOfExamsTextBox);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.numDaysTextBox);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.firstExamTimeTextBox);
            this.panel1.Location = new System.Drawing.Point(40, 30);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(355, 270);
            this.panel1.TabIndex = 12;
            // 
            // errorProvider1
            // 
            this.errorProvider1.BlinkStyle = System.Windows.Forms.ErrorBlinkStyle.NeverBlink;
            this.errorProvider1.ContainerControl = this;
            // 
            // TimeConstraintsForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(70)))), ((int)(((byte)(22)))), ((int)(((byte)(107)))));
            this.ClientSize = new System.Drawing.Size(434, 336);
            this.Controls.Add(this.panel1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximumSize = new System.Drawing.Size(450, 375);
            this.MinimumSize = new System.Drawing.Size(450, 375);
            this.Name = "TimeConstraintsForm";
            this.Text = "Time Constraints";
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button chooseFileButton;
        private System.Windows.Forms.TextBox numDaysTextBox;
        private System.Windows.Forms.TextBox firstExamTimeTextBox;
        private System.Windows.Forms.TextBox lengthOfExamsTextBox;
        private System.Windows.Forms.TextBox lengthBetweenExamsTextBox;
        private System.Windows.Forms.TextBox lunchPeriodTextBox;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button updateConstraintsButton;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.ErrorProvider errorProvider1;
    }
}
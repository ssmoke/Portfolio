﻿using LIFES.UserInterfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LIFES
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>asdf
        /// This is working!
        /// This is jeffreys change another change
        /// scotts  comment
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new MainGUI());
        }
    }
}

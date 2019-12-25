using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using UIHelper;

namespace Email
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            _Model = new Model();
            this.DataContext = _Model;
        }

        private Model _Model;

        private void OnExit_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void OnOpen_Executed(object sender, System.Windows.Input.ExecutedRoutedEventArgs e)
        {
            OpenTextFileDialog aDlg = new OpenTextFileDialog();
            if (aDlg.ShowDialog() != true) return;
            try
            {
                _Model.Load(aDlg.FileName, aDlg.CurrentEncoding);
            }
            catch (System.Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void OnStartFilte_Executed(object sender, System.Windows.Input.ExecutedRoutedEventArgs e)
        {
            try
            {
                _Model.StartFilte();
            }
            catch (System.Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void OnStartFilte_CanExecute(object sender, System.Windows.Input.CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = _Model != null && _Model.CanStartFilte;
        }

        private void OnOpenPic_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            OpenFileDialog aDlg = new OpenFileDialog()
            {
                Title = "选择文件",
                Filter = "图像文件|*.jpg;*.png;*.jpeg;*.bmp;*.gif|所有文件|*.*"
            };
            if (aDlg.ShowDialog() != true) return;
            _Model.PicFileName = aDlg.FileName;
            Console.WriteLine(_Model.PicFileName);

       }

        private void OnEmail_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            this.Close();
        }

        private void OnEmail_CanExecuted(object sender, CanExecuteRoutedEventArgs e)
        {
            Regex re = new Regex("^[a-z0-9A-Z]+[- | a-z0-9A-Z . _]+@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-z]{2,}$");
          
            e.CanExecute = _Model != null&&!string.IsNullOrEmpty(_Model.EmailPath) && re.IsMatch(_Model.EmailPath) && !string.IsNullOrEmpty(_Model.FiltedText);
        }
    }
}

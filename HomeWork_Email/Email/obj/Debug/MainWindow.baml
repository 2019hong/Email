   M S B A M L   `   `   `  ����?  ;Test, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:EmailEmail  5   	       Email.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Email     5   	     � Title$  Email��5   	   $	��600��6   $	��800��6$    � 	Resources 5	       	  Email  OpenPic��%:   &	        &	      �� 5
   
   6   �� 5   
   6   5       J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$
 Open��5      6(     5   
   -   5        # [  5      6V     5   
   -   5        # [ 5      6<   .��5      ]� .+�5   
   �� $	��Top=�6   +)请在下方输入有效的Email地址：6<   �� 5   
   $	��Top=�6   ��6'   �� *	EmailPath+ �� UpdateSourceTrigger$ PropertyChanged=��� 5   
   $	��Top=�6   �� 5      $	��765��6   " 请在下方输入Email正文：65    �� 5      $
�� .. ��6   $
��Open��6$   5      �� 5   
   $	��Top=�6   $	��200��6'   ��64   �� *
FiltedText+$ PropertyChanged=��� 5   
   $	��Top=�6   �� 5      $	��765��6   ,*请在下方输入或选择附件图片：65    �� 5      $
�� .. ��6   #��[ 6$   5       �� 5!   
   $	��Top=�6   $��20��6E   ��6'   �� *PicFileName+6E   �� 5"   
   $	��Top=�6   $	��100��6&   ��63   �� *PicFileName+$ PropertyChanged=�A� 5#   
    A� Rows$ 1��6   $	��Top=�6   .+�5$      �� $��确定��6   $��40��6"   #��[  6.   �� 5%      -   5        $��退出��5%      $��40��6"   6.   5&      5(      5)      
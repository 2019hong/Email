   M S B A M L   `   `   `  ����C  ?UIHelper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:UIHelperUIHelper  5   	   !    UIHelper.OpenTextFileDialog   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:UIHelper     5   	     � Title$  打开文本文件��5   	   $	��450��6   $	��800��6%    � 	Resources 5	       
  Browse  Ok��%:   &	        &	      �� 5
   
   6   �� 5   
   6   5       J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command# [  5      5        5   
   -   5        # [ 5      5      .��5      ]� .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $	��Top=�6.   .+�5      �� $��文件名：��6   �� 5      $	��200��60   ��6   �� *
FileName+60   �� 5      $
�� .. ��6   #��[  6$   �� 5      $��10q�6   �� 5      $��	编码：��6   �� 5       �� DisplayMemberPath$ EncodingName��5      ��5      �� *	Encodings+ �� SelectedItem 5      �� *CurrentEncoding+5       A� 5!   
    A� Rows$ 1��6   $��Bottom=�6   .+�5"      �� $��确定��6   #��[ 6"    �� 	IsDefault . 6@   �� 5#      $��取消��6   	 �� IsCancel	 . 6"   5$      �� 5%   
   
 �� 
IsReadOnly
 . ��6   �� *	Preview+6+   5&      5'      
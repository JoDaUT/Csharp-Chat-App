   M S B A M L   `   `   `  ����J  FChatRoomProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ChatRoomProjectChatRoomProject  5   	   !    ChatRoomProject.Inscription   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.0.1244, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   )localclr-namespace:ChatRoomProject  5   	     � Title$  Inscription��5	   	   $	��450��6   $	��800��6+    � WindowStyle$
 None=�68    � 
ResizeMode$ NoResize=�6K    � Topmost . .��5      � ��5   
   �� 5       �� 
StartPoint$ 0.1,0&�6"    �� EndPoint$ 0.9,1&�65   .��5      �  � Color$ 	#FFE63070��6    � Offset$ 1Q�61   � 5      $ 	#FFFE8704��6   $ 0Q�61   5      .+�5   
   �� -   5        $	��390��5      $	��Top=�6    �� CornerRadius$ 	0 0 180 0��66   ���#100E17$��1,0,-1,0q�6�   6�   �� 5   
   $	��100��6   $��	700,0,0,0q�6!   .+�5      �� -   5        	 ��Name$	 btnExit��5   "   $��10 20q�5       &  "MaterialDesignFloatingActionButton#��[  6$   
 � ToolTip$
 Close��5      ��5   `   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6*   
�������$��30��6J   $��30��6U   5      5      �� 5    
    �� Orientation$ 
Horizontal=�6   .+�5!      �� $	��350��6   .+�5"      �� -   5         ��Name$ ServerConnexionTextBox��5"       �� TextWrapping$
 Wrap=�6:   $�� ��6N   $	��120��6V   $��115,20q�6b    �� 
IsReadOnly . 6r   �� 5#      $T��NC:\Users\Vincent\source\repos\ChatRoomProject\Ressources\Images\LoginImage.png��6   $	��300��6p   $	��300��6|   $	��Top=�6�   $��
30,0,20,30q�6�   $
��Fill=�6�   5$      �� 5%      $	��350��6   .+�5&      �� $��20 40q�6   .+�5'      �� $��Inscription��6    $��20q�63   
������� �� TextAlignment$ Center=�6R   $��38(�6i   $��Tahoma)�6w   �� 5)      $ 
Horizontal=�6!   $��10q�6:   .+�5*        $
 User=�62   $��25��6>   $��25��6I   
�������6U   �� 5+      -   5        $ txtUsername��5+   "   $
��10 0q�68   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Identifiant / Email��6F   
�������$	��250��6�   
������� �� 
CaretBrush �	#FFD94448 �� SelectionBrush �	#FFD944486�   5,      �� 5.      $ 
Horizontal=�6!   $��10q�6:   .+�5/        $
 Lock=�62   $��25��6>   $��25��6I   
�������6U   G� 50      -   5         G�Name$ txtPassword��50   &   $
��10 0q�6;   $ ********��6I   
�������$	��250��6�   
������� G� 
CaretBrush �	#FFD94448 G� SelectionBrush �	#FFD944486�   51      �� 53      $��96,10,106,10q�6!   $��Center=�67   $	��108��6T   .+�54      �� -   5        $	 btnLogin��56   d   $	��100��54   !   $��0,0,0,0q�6-   $��40��6>     MaterialDesignRaisedButton#��[ 6J   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10��55      $��2q�6H   ���#D94448���#D94448
�������$
 Valider son Inscription��56   B   $��
S'inscrire��6�   57      58      59      5:      5<      5>      
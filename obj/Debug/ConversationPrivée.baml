   M S B A M L   `   `   `  ����J  FChatRoomProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ChatRoomProjectChatRoomProject  5   	   )    #ChatRoomProject.ConversationPrivée   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:ChatRoomProject     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.0.1244, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  ConversationPrivée��5	   	   $	��450��6$   $	��800��61    � WindowStyle$
 None=�6>    � 
ResizeMode$ NoResize=�6Q   .��5
      � ��5      �� 5       �� 
StartPoint$ 0.1,0&�6&    �� EndPoint$ 0.9,1&�69   .��5      �  � Color$ 	#FFE63070��6#    � Offset$ 1Q�65   � 5      $ 	#FFFE8704��6#   $ 0Q�65   5      .+�5      �� -   5        $	��390��5      $	��Top=�6"    �� CornerRadius$ 	0 0 180 0��6:   ���#100E175      �� 5      $	��100��6   $��702,0,-2,17q�6%   .+�5      �� -   5         ��Name$ btnExit��5   "   $��10 20q�5       &  "MaterialDesignFloatingActionButton#��[  6(   	 � ToolTip$	 Close��5      ��5   d   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon  
   Kind$
 Close=�6.   
�������$��30��6N   $��30��6Y   5      5      �� 5       $T��NC:\Users\Vincent\source\repos\ChatRoomProject\Ressources\Images\LoginImage.png��6   $	��150��6l   $	��150��6x   $	��Top=�6�   $��650,297,0,0q�6�   $
��Fill=�6�   {�.  6�   �� 5#   
   -   5        $��DestinatiretextBox��5#       �� TextWrapping$
 Wrap=�6-   
�������$��343,36,271,392q�6T   �� 5&   
   $��124,74,155,109q�6   .+�5'      �� -   5         ��Name$ ChatScreentextBox��5'      ���	#FFF7EDED
���   �$	��200��6\    �� 
IsReadOnly . 6i   �� 5(      -   5        $ MessagetextBox��5(      ���	#FFF7EDED
���   �$��40��6[   $	��400��6g   $�� ��6s   $��0,10,120.5,0q�6{   �� 5)      -   5        $ 
Sendbutton��5)      $��Envoi��6B   $��40��6R   $	��110��6^   $��410.5,-40,0,0q�6k   5*      5+      5,      
   M S B A M L   `   `   `  ����J  FChatRoomProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ChatRoomProjectChatRoomProject  5   	   %    ChatRoomProject.GeneralChatPage   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.0.1244, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   )localclr-namespace:ChatRoomProject  5   	     � Title$  GeneralChatPage��5	   	   $	��450��6"   $	��800��6/    � WindowStyle$
 None=�6<    � 
ResizeMode$ NoResize=�6O    � Topmost . .��5
      � ��5   
   �� 5       �� 
StartPoint$ 0.1,0&�6"    �� EndPoint$ 0.9,1&�65   .��5      �  � Color$ 	#FFE63070��6    � Offset$ 1Q�61   � 5      $ 	#FFFE8704��6   $ 0Q�61   5      .+�5   
   �� -   5        $	��390��5      $	��Top=�6    �� CornerRadius$ 	0 0 180 0��66   ���#100E176d   �� 5   
   $	��100��6   $��	700,0,0,0q�6!   .+�5      �� -   5        	 ��Name$	 btnExit��5   "   $��22,20q�5       &  "MaterialDesignFloatingActionButton#��[  6$   
 � ToolTip$
 Close��5      ��5   `   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6*   
�������$��30��6J   $��30��6U   5      5      �� 5    
   -   5        $	 btnChatRoom��5"   U   $
��Auto��5         MaterialDesignRaisedButton#��[ 6   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10��5!      $��2q�6H   ���#D94448���#D94448
�������$
 ChatRoom��5"   B   $��Rejoindre une ChatRoom��6�   $��476,183,130,213q�6�   �� 5%   
   -   5        $	 
btnContact��5'   Z   $
��Auto��5%      #��[ 6   $ 10��5&      $��2q�6H   ���#D94448���#D94448
�������$
 Message Privé��5'   B   $��Conversation Privés��6�   $��120,183,479,213q�6�   &   System.Windows.Media.TextOptions   TextFormattingMode$ Display=�6�   5)      5*      
FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
	Start a task, record start time.
		
	by Jianhua Zhang
	
	Copyright � 2015, Jianhua Zhang
	
	All rights reserved.
	
	version 0.1: Original release
     � 	 	( 
 	 S t a r t   a   t a s k ,   r e c o r d   s t a r t   t i m e . 
 	 	 
 	 b y   J i a n h u a   Z h a n g 
 	 
 	 C o p y r i g h t   �   2 0 1 5 ,   J i a n h u a   Z h a n g 
 	 
 	 A l l   r i g h t s   r e s e r v e d . 
 	 
 	 v e r s i o n   0 . 1 :   O r i g i n a l   r e l e a s e 
   
  
 l     ��������  ��  ��        j     �� �� "0 scriptsuitename scriptSuiteName  m        �   " O m n i F o c u s   S c r i p t s      l     ��  ��    � � Delete the property define of dateOri, then uncomment the next line and save to set the proper date string of your datetime setting     �     D e l e t e   t h e   p r o p e r t y   d e f i n e   o f   d a t e O r i ,   t h e n   u n c o m m e n t   t h e   n e x t   l i n e   a n d   s a v e   t o   s e t   t h e   p r o p e r   d a t e   s t r i n g   o f   y o u r   d a t e t i m e   s e t t i n g      l     ��  ��    + % property dateOri : date "01-01-2000"     �   J   p r o p e r t y   d a t e O r i   :   d a t e   " 0 1 - 0 1 - 2 0 0 0 "      j    �� �� 0 dateori dateOri  m       ldt     ���        l     ��������  ��  ��      ! " ! l     #���� # r      $ % $ m     ��
�� 
msng % o      ���� 0 	itemtitle 	itemTitle��  ��   "  & ' & l  � (���� ( O   � ) * ) O   � + , + O   � - . - l  � / 0 1 / k   � 2 2  3 4 3 r     5 6 5 n     7 8 7 1    ��
�� 
valL 8 2    ��
�� 
OTst 6 o      ���� $0 theselecteditems theSelectedItems 4  9 : 9 Z     8 ; <���� ; l    ' =���� = A     ' > ? > l    % @���� @ I    %�� A��
�� .corecnte****       **** A o     !���� $0 theselecteditems theSelectedItems��  ��  ��   ? m   % &���� ��  ��   < k   * 4 B B  C D C I  * 1�� E F
�� .sysodisAaleR        TEXT E m   * + G G � H H N Y o u   m u s t   f i r s t   s e l e c t   a n   i t e m   t o   s t a r t . F �� I��
�� 
as A I m   , -��
�� EAlTwarN��   D  J�� J L   2 4����  ��  ��  ��   :  K L K Z   9 Q M N���� M l  9 @ O���� O ?   9 @ P Q P l  9 > R���� R I  9 >�� S��
�� .corecnte****       **** S o   9 :���� $0 theselecteditems theSelectedItems��  ��  ��   Q m   > ?���� ��  ��   N k   C M T T  U V U I  C J�� W X
�� .sysodisAaleR        TEXT W m   C D Y Y � Z Z N Y o u   c a n n o t   s e l e c t   m u l t i   i t e m s   t o   s t a r t . X �� [��
�� 
as A [ m   E F��
�� EAlTwarN��   V  \�� \ L   K M����  ��  ��  ��   L  ] ^ ] l  R R��������  ��  ��   ^  _ ` _ l  R R��������  ��  ��   `  a b a l  R R��������  ��  ��   b  c d c X   R� e�� f e k   d� g g  h i h r   d k j k j n   d i l m l 1   e i��
�� 
pnam m o   d e���� 0 anitem anItem k o      ���� 0 	itemtitle 	itemTitle i  n o n l  l l��������  ��  ��   o  p q p l  l l�� r s��   r B < Task cannot start if the first word is "#Ongoing:"(started)    s � t t x   T a s k   c a n n o t   s t a r t   i f   t h e   f i r s t   w o r d   i s   " # O n g o i n g : " ( s t a r t e d ) q  u v u Z   l � w x���� w C   l q y z y o   l m���� 0 	itemtitle 	itemTitle z m   m p { { � | |  # O n g o i n g : x k   t � } }  ~  ~ I  t }�� � �
�� .sysodisAaleR        TEXT � m   t w � � � � � @ Y o u   c a n n o t   s t a r t   a   t a s k   s t a r t e d ! � �� ���
�� 
as A � m   x y��
�� EAlTwarN��     ��� � L   ~ �����  ��  ��  ��   v  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � E ?---------------------------------------------------------------    � � � � ~ - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l  � ��� � ���   � $  Check no task with #Ongoing:     � � � � <   C h e c k   n o   t a s k   w i t h   # O n g o i n g :   �  � � � l  � ��� � ���   � J D set theNotCompltedTasks to (every task where its completed = false)    � � � � �   s e t   t h e N o t C o m p l t e d T a s k s   t o   ( e v e r y   t a s k   w h e r e   i t s   c o m p l e t e d   =   f a l s e ) �  � � � l  � ��� � ���   � < 6 repeat with a from 1 to length of theNotCompltedTasks    � � � � l   r e p e a t   w i t h   a   f r o m   1   t o   l e n g t h   o f   t h e N o t C o m p l t e d T a s k s �  � � � l  � ��� � ���   � ; 5 	set theCurrentTask to item a of theNotCompltedTasks    � � � � j   	 s e t   t h e C u r r e n t T a s k   t o   i t e m   a   o f   t h e N o t C o m p l t e d T a s k s �  � � � l  � ��� � ���   � / ) 	set taskTitle to name of theCurrentTask    � � � � R   	 s e t   t a s k T i t l e   t o   n a m e   o f   t h e C u r r e n t T a s k �  � � � l  � ��� � ���   � 1 + 	if taskTitle starts with "#Ongoing:" then    � � � � V   	 i f   t a s k T i t l e   s t a r t s   w i t h   " # O n g o i n g : "   t h e n �  � � � l  � ��� � ���   � Z T 		display alert "You cannot start a task while another task is started!" as warning    � � � � �   	 	 d i s p l a y   a l e r t   " Y o u   c a n n o t   s t a r t   a   t a s k   w h i l e   a n o t h e r   t a s k   i s   s t a r t e d ! "   a s   w a r n i n g �  � � � l  � ��� � ���   �  	 		return    � � � �    	 	 r e t u r n �  � � � l  � ��� � ���   �   	end if    � � � �    	 e n d   i f �  � � � l  � ��� � ���   �   end repeat    � � � �    e n d   r e p e a t �  � � � l  � ��� � ���   � E ?---------------------------------------------------------------    � � � � ~ - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � b   � � � � � m   � � � � � � �  # O n g o i n g :   � o   � ����� 0 	itemtitle 	itemTitle � o      ���� 0 
starttitle 
startTitle �  � � � r   � � � � � c   � � � � � o   � ����� 0 
starttitle 
startTitle � m   � ���
�� 
ctxt � n       � � � 1   � ���
�� 
pnam � o   � ����� 0 anitem anItem �  � � � r   � � � � � m   � ���
�� boovtrue � n       � � � 1   � ���
�� 
FCfl � o   � ����� 0 anitem anItem �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � %  get the elapsed time by second    � � � � >   g e t   t h e   e l a p s e d   t i m e   b y   s e c o n d �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
FCno � o   � ����� 0 anitem anItem � o      ���� 0 notetext noteText �  � � � r   � � � � � o   � ����� 0 notetext noteText � o      ���� 0 orinote oriNote �  � � � r   � � � � � m   � � � � � � �   � o      ���� 0 
newtimestr 
newTimeStr �  � � � Z   �x � � � � � ?   � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � n   � � � � � 2  � ���
�� 
cwor � o   � ����� 0 notetext noteText��  ��  ��   � m   � �����  � k   � � �    r   � � c   � � l  � ����� n   � � 7   � ���	

�� 
cobj	 4   � ���
�� 
cwor m   � �������
 4   � ��
� 
cwor m   � ��~�~�� o   � ��}�} 0 notetext noteText��  ��   m   � ��|
�| 
ctxt o      �{�{ 0 
lastendstr 
lastEndStr  r   � c   � l  ��z�y n   � 7   ��x
�x 
cobj 4   � ��w
�w 
cwor m   � ��v�v�� 4   �u
�u 
cwor m  �t�t�� o   � ��s�s 0 notetext noteText�z  �y   m  �r
�r 
ctxt o      �q�q 0 lastbeginstr lastBeginStr  l �p�o�n�p  �o  �n   �m Z  �l F  & !  = "#" o  �k�k 0 
lastendstr 
lastEndStr# m  $$ �%%  T E n d! = "&'& o  �j�j 0 lastbeginstr lastBeginStr' m  !(( �))  T B e g i n k  )�** +,+ l ))�i-.�i  - !  the time string is existed   . �// 6   t h e   t i m e   s t r i n g   i s   e x i s t e d, 010 r  )H232 c  )D454 l )@6�h�g6 n  )@787 7  ,@�f9:
�f 
cobj9 4  27�e;
�e 
cwor; m  56�d�d : 4  8?�c<
�c 
cwor< m  ;>�b�b��8 o  ),�a�a 0 notetext noteText�h  �g  5 m  @C�`
�` 
ctxt3 o      �_�_ 0 orinote oriNote1 =>= r  Ih?@? c  IdABA l I`C�^�]C n  I`DED 7  L`�\FG
�\ 
cobjF 4  RY�[H
�[ 
cworH m  UX�Z�Z��G 4  Z_�YI
�Y 
cworI m  ]^�X�X��E o  IL�W�W 0 notetext noteText�^  �]  B m  `c�V
�V 
ctxt@ o      �U�U 0 timestr timeStr> JKJ l ii�T�S�R�T  �S  �R  K LML r  i|NON c  ixPQP l itR�Q�PR \  itSTS l inU�O�NU I in�M�L�K
�M .misccurdldt    ��� null�L  �K  �O  �N  T o  ns�J�J 0 dateori dateOri�Q  �P  Q m  tw�I
�I 
ctxtO o      �H�H 0 	starttime 	startTimeM VWV r  }�XYX n  }�Z[Z 7  ���G\]
�G 
cobj\ 4  ���F^
�F 
cwor^ m  ���E�E ] 4  ���D_
�D 
cwor_ m  ���C�C [ o  }��B�B 0 timestr timeStrY o      �A�A 0 prefixtimestr prefixTimeStrW `a` r  ��bcb n  ��ded 7  ���@fg
�@ 
cobjf 4  ���?h
�? 
cworh m  ���>�>��g 4  ���=i
�= 
cwori m  ���<�<��e o  ���;�; 0 timestr timeStrc o      �:�:  0 postfixtimestr postfixTimeStra j�9j r  ��klk b  ��mnm b  ��opo b  ��qrq b  ��sts o  ���8�8 0 prefixtimestr prefixTimeStrt m  ��uu �vv   r o  ���7�7 0 	starttime 	startTimep m  ��ww �xx   n o  ���6�6  0 postfixtimestr postfixTimeStrl o      �5�5 0 
newtimestr 
newTimeStr�9  �l   k  �yy z{z l ���4|}�4  | ( " -- the time string is not existed   } �~~ D   - -   t h e   t i m e   s t r i n g   i s   n o t   e x i s t e d{ � r  ����� c  ����� l ����3�2� \  ����� l ����1�0� I ���/�.�-
�/ .misccurdldt    ��� null�.  �-  �1  �0  � o  ���,�, 0 dateori dateOri�3  �2  � m  ���+
�+ 
ctxt� o      �*�* 0 	starttime 	startTime� ��� r  ����� m  ���� ���  T B e g i n   0� o      �)�) 0 prefixtimestr prefixTimeStr� ��� r  ����� m  ���� ���  T E n d� o      �(�(  0 postfixtimestr postfixTimeStr� ��'� r  ���� b  ���� b  ����� b  ����� b  ����� o  ���&�& 0 prefixtimestr prefixTimeStr� m  ���� ���   � o  ���%�% 0 	starttime 	startTime� m  ���� ���   � o  ��$�$  0 postfixtimestr postfixTimeStr� o      �#�# 0 
newtimestr 
newTimeStr�'  �m   � ��� =  	��� l 	��"�!� I 	� ��
�  .corecnte****       ****� n  	��� 2 �
� 
cwor� o  	�� 0 notetext noteText�  �"  �!  � m  �� � ��� k  :�� ��� r  8��� c  4��� l 0���� n  0��� 7  0���
� 
cobj� 4  $)��
� 
cwor� m  '(����� 4  */��
� 
cwor� m  -.����� o  �� 0 notetext noteText�  �  � m  03�
� 
ctxt� o      �� 0 
lastendstr 
lastEndStr� ��� r  9Z��� c  9V��� l 9R���� n  9R��� 7  <R���
� 
cobj� 4  BI��
� 
cwor� m  EH����� 4  JQ��
� 
cwor� m  MP�
�
��� o  9<�	�	 0 notetext noteText�  �  � m  RU�
� 
ctxt� o      �� 0 lastbeginstr lastBeginStr� ��� l [[����  �  �  � ��� Z  [8����� F  [p��� = [b��� o  [^�� 0 
lastendstr 
lastEndStr� m  ^a�� ���  T E n d� = el��� o  eh�� 0 lastbeginstr lastBeginStr� m  hk�� ���  T B e g i n� k  s��� ��� l ss� ���   � !  the time string is existed   � ��� 6   t h e   t i m e   s t r i n g   i s   e x i s t e d� ��� r  sz��� m  sv�� ���  � o      ���� 0 orinote oriNote� ��� r  {���� c  {���� l {������� n  {���� 7  ~�����
�� 
cobj� 4  �����
�� 
cwor� m  ��������� 4  �����
�� 
cwor� m  ��������� o  {~���� 0 notetext noteText��  ��  � m  ����
�� 
ctxt� o      ���� 0 timestr timeStr� ��� l ����������  ��  ��  � ��� r  ����� c  ����� l �������� \  ����� l �������� I ��������
�� .misccurdldt    ��� null��  ��  ��  ��  � o  ������ 0 dateori dateOri��  ��  � m  ����
�� 
ctxt� o      ���� 0 	starttime 	startTime� ��� r  ��   n  �� 7  ����
�� 
cobj 4  ����
�� 
cwor m  ������  4  ����
�� 
cwor m  ������  o  ������ 0 timestr timeStr o      ���� 0 prefixtimestr prefixTimeStr� 	 r  ��

 n  �� 7  ����
�� 
cobj 4  ����
�� 
cwor m  �������� 4  ����
�� 
cwor m  �������� o  ������ 0 timestr timeStr o      ����  0 postfixtimestr postfixTimeStr	 �� r  �� b  �� b  �� b  �� b  �� o  ������ 0 prefixtimestr prefixTimeStr m  �� �    o  ������ 0 	starttime 	startTime m  �� �      o  ������  0 postfixtimestr postfixTimeStr o      ���� 0 
newtimestr 
newTimeStr��  �  � k  �8!! "#" l ����$%��  $ %  the time string is not existed   % �&& >   t h e   t i m e   s t r i n g   i s   n o t   e x i s t e d# '(' r  �)*) c  �+,+ l �-����- \  �./. l �0����0 I �������
�� .misccurdldt    ��� null��  ��  ��  ��  / o  ���� 0 dateori dateOri��  ��  , m  ��
�� 
ctxt* o      ���� 0 	starttime 	startTime( 121 r  343 m  55 �66  T B e g i n   04 o      ���� 0 prefixtimestr prefixTimeStr2 787 r   9:9 m  ;; �<<  T E n d: o      ����  0 postfixtimestr postfixTimeStr8 =��= r  !8>?> b  !4@A@ b  !0BCB b  !,DED b  !(FGF o  !$���� 0 prefixtimestr prefixTimeStrG m  $'HH �II   E o  (+���� 0 	starttime 	startTimeC m  ,/JJ �KK   A o  03����  0 postfixtimestr postfixTimeStr? o      ���� 0 
newtimestr 
newTimeStr��  � L��L l 99��������  ��  ��  ��  �   � k  =xMM NON l ==��PQ��  P ( " -- the time string is not existed   Q �RR D   - -   t h e   t i m e   s t r i n g   i s   n o t   e x i s t e dO STS r  =PUVU c  =LWXW l =HY����Y \  =HZ[Z l =B\����\ I =B������
�� .misccurdldt    ��� null��  ��  ��  ��  [ o  BG���� 0 dateori dateOri��  ��  X m  HK��
�� 
ctxtV o      ���� 0 	starttime 	startTimeT ]^] r  QX_`_ m  QTaa �bb  T B e g i n   0` o      ���� 0 prefixtimestr prefixTimeStr^ cdc r  Y`efe m  Y\gg �hh  T E n df o      ����  0 postfixtimestr postfixTimeStrd i��i r  axjkj b  atlml b  apnon b  alpqp b  ahrsr o  ad���� 0 prefixtimestr prefixTimeStrs m  dgtt �uu   q o  hk���� 0 	starttime 	startTimeo m  lovv �ww   m o  ps����  0 postfixtimestr postfixTimeStrk o      ���� 0 
newtimestr 
newTimeStr��   � xyx l yy��������  ��  ��  y z{z r  y�|}| b  y�~~ b  y���� o  y|���� 0 orinote oriNote� m  |�� ���  
 
 o  ������ 0 
newtimestr 
newTimeStr} n      ��� 1  ����
�� 
FCno� o  ������ 0 anitem anItem{ ��� Z ��������� = ����� n  ����� 1  ����
�� 
FCDs� o  ������ 0 anitem anItem� m  ����
�� 
msng� r  ����� I ��������
�� .misccurdldt    ��� null��  ��  � n      ��� 1  ����
�� 
FCDs� o  ������ 0 anitem anItem��  ��  � ���� l ����������  ��  ��  ��  �� 0 anitem anItem f o   U V���� $0 theselecteditems theSelectedItems d ���� r  ����� c  ����� o  ������ 0 	itemtitle 	itemTitle� m  ����
�� 
ctxt� o      ���� 0 	itemtitle 	itemTitle��   0 / ) (first document window whose index is 1)    1 ��� R   ( f i r s t   d o c u m e n t   w i n d o w   w h o s e   i n d e x   i s   1 ) . n    ��� 1    ��
�� 
FCcn� 4    ���
�� 
FCdw� m    ����  , 4   ���
�� 
docu� m   
 ����  * m    ���                                                                                  OFOC  alis    >  Mac                        �4SH+     OOmniFocus.app                                                   $���        ����  	                Applications    �3��      ��:       O  Mac:Applications: OmniFocus.app     O m n i F o c u s . a p p    M a c  Applications/OmniFocus.app  / ��  ��  ��   ' ��� l     ��������  ��  ��  � ��� l �������� Z  ��������� > ����� o  ������ 0 	itemtitle 	itemTitle� m  ����
�� 
msng� k  ���� ��� n ����� I  ��������� 
0 notify  � ��� m  ���� ���  T a s k   s t a r t e d !� ���� b  ����� m  ���� ���  T a s k :  � o  ������ 0 	itemtitle 	itemTitle��  ��  �  f  ��� ���� I �����
� .sysottosnull���     TEXT� m  ���� ���  A c t i o n   s t a r t e d !� �~��}
�~ 
VOIC� m  ���� ���  V i c t o r i a�}  ��  ��  ��  ��  ��  � ��� l     �|�{�z�|  �{  �z  � ��� l      �y���y  � � �
	Uses Notification Center to display a notification message.
	theTitle � a string giving the notification title
	theDescription � a string describing the notification event
   � ���\ 
 	 U s e s   N o t i f i c a t i o n   C e n t e r   t o   d i s p l a y   a   n o t i f i c a t i o n   m e s s a g e . 
 	 t h e T i t l e      a   s t r i n g   g i v i n g   t h e   n o t i f i c a t i o n   t i t l e 
 	 t h e D e s c r i p t i o n      a   s t r i n g   d e s c r i b i n g   t h e   n o t i f i c a t i o n   e v e n t 
� ��� i    	��� I      �x��w�x 
0 notify  � ��� o      �v�v 0 thetitle theTitle� ��u� o      �t�t  0 thedescription theDescription�u  �w  � I    �s��
�s .sysonotfnull��� ��� TEXT� o     �r�r  0 thedescription theDescription� �q��
�q 
appr� o    �p�p "0 scriptsuitename scriptSuiteName� �o��n
�o 
subt� o    	�m�m 0 thetitle theTitle�n  � ��� l     �l�k�j�l  �k  �j  � ��i� l     �h�g�f�h  �g  �f  �i       �e� ����������������e  � �d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�d "0 scriptsuitename scriptSuiteName�c 0 dateori dateOri�b 
0 notify  
�a .aevtoappnull  �   � ****�` 0 	itemtitle 	itemTitle�_ $0 theselecteditems theSelectedItems�^ 0 
starttitle 
startTitle�] 0 notetext noteText�\ 0 orinote oriNote�[ 0 
newtimestr 
newTimeStr�Z 0 
lastendstr 
lastEndStr�Y 0 lastbeginstr lastBeginStr�X 0 timestr timeStr�W 0 	starttime 	startTime�V 0 prefixtimestr prefixTimeStr�U  0 postfixtimestr postfixTimeStr� ldt     ��� � �T��S�R���Q�T 
0 notify  �S �P��P �  �O�N�O 0 thetitle theTitle�N  0 thedescription theDescription�R  � �M�L�M 0 thetitle theTitle�L  0 thedescription theDescription� �K�J�I�H
�K 
appr
�J 
subt�I 
�H .sysonotfnull��� ��� TEXT�Q ��b   �� � �G��F�E���D
�G .aevtoappnull  �   � ****� k    ���  !��  &�� ��C�C  �F  �E  � �B�B 0 anitem anItem� G�A�@��?�>�=�<�;�:�9 G�8�7�6 Y�5�4�3 { � ��2�1�0�/�.�- ��,�+�*�)�(�'$(�&�%�$�#�"�!� uw�������5;HJagtv���������
�A 
msng�@ 0 	itemtitle 	itemTitle
�? 
docu
�> 
FCdw
�= 
FCcn
�< 
OTst
�; 
valL�: $0 theselecteditems theSelectedItems
�9 .corecnte****       ****
�8 
as A
�7 EAlTwarN
�6 .sysodisAaleR        TEXT
�5 
kocl
�4 
cobj
�3 
pnam�2 0 
starttitle 
startTitle
�1 
ctxt
�0 
FCfl
�/ 
FCno�. 0 notetext noteText�- 0 orinote oriNote�, 0 
newtimestr 
newTimeStr
�+ 
cwor�* �) 0 
lastendstr 
lastEndStr�(���' 0 lastbeginstr lastBeginStr
�& 
bool�%���$ 0 timestr timeStr
�# .misccurdldt    ��� null�" 0 	starttime 	startTime�! 0 prefixtimestr prefixTimeStr�   0 postfixtimestr postfixTimeStr
� 
FCDs� 
0 notify  
� 
VOIC
� .sysottosnull���     TEXT�D��E�O��*�k/�*�k/�,�*�-�,E�O�j 	k ���l OhY hO�j 	k ���l OhY hOX�[�a l 	kh  �a ,E�O�a  a ��l OhY hOa �%E` O_ a &�a ,FOe�a ,FO�a ,E` O_ E` Oa E` O_ a -j 	a :_ [a \[a i/\a i/2a &E` O_ [a \[a a  /\a a  /2a &E` !O_ a " 	 _ !a # a $& �_ [a \[a k/\a a %/2a &E` O_ [a \[a a  /\a i/2a &E` &O*j 'b  a &E` (O_ &[a \[a k/\a l/2E` )O_ &[a \[a i/\a i/2E` *O_ )a +%_ (%a ,%_ *%E` Y =*j 'b  a &E` (Oa -E` )Oa .E` *O_ )a /%_ (%a 0%_ *%E` Yq_ a -j 	a  $_ [a \[a i/\a i/2a &E` O_ [a \[a a  /\a a  /2a &E` !O_ a 1 	 _ !a 2 a $& �a 3E` O_ [a \[a a  /\a i/2a &E` &O*j 'b  a &E` (O_ &[a \[a k/\a l/2E` )O_ &[a \[a i/\a i/2E` *O_ )a 4%_ (%a 5%_ *%E` Y =*j 'b  a &E` (Oa 6E` )Oa 7E` *O_ )a 8%_ (%a 9%_ *%E` OPY =*j 'b  a &E` (Oa :E` )Oa ;E` *O_ )a <%_ (%a =%_ *%E` O_ a >%_ %�a ,FO�a ?,�  *j '�a ?,FY hOP[OY��O�a &E�UUUO��  )a @a A�%l+ BOa Ca Da El FY h� ��� ��epVh�R6`Vh� ��� �  �� �� ����� ����
� 
docu� ���  p i N d x B V i 7 4 2
� kfrmID  
� 
FCit� ���  h A D 5 e u _ O U 5 6
� kfrmID  � ��� " # O n g o i n g :  ��epVh�R6`Vh� ��� �`N�N k!c	N N���R���_Ue�ge���OMn���S�N�R�e�[Wb���Yl��~ߋ�R��� 
��N ke�Ty�^g\S�uv�N;R�v�`�~�bm�g�{I{I��S�N��h7geQ�\ 
Q�R��PZ�N�`��T`�{I{I 
 
 T B e g i n   2 0   0   T E n d� ��� �`N�N k!c	N N���R���_Ue�ge���OMn���S�N�R�e�[Wb���Yl��~ߋ�R��� 
��N ke�Ty�^g\S�uv�N;R�v�`�~�bm�g�{I{I��S�N��h7geQ�\ 
Q�R��PZ�N�`��T`�{I{I� ��� �  ����� u�w� �  T� �		  B� �

  e� �  g� �  i  �  n �    �  2 �  0� �  4 9 7 3 7 7 9 7 0 �  T �  E �  n �  d� �  T E n d� �  T B e g i n� �   T B e g i n   2 0   0   T E n d� �� 	  ����� ��������  �  �  �  �  �  �  � ��   ���
�	���������  �  �
  �	  �  �  �  �  �  �  �  �  ascr  ��ޭ
FasdUAS 1.101.10   ��   ��    k             l     ��  ��    $ ==============================     � 	 	 < = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =   
  
 l     ��  ��    1 + OmniFocus > Prepare Task Completion Report     �   V   O m n i F o c u s   >   P r e p a r e   T a s k   C o m p l e t i o n   R e p o r t      l     ��  ��      Version 2.0.0     �      V e r s i o n   2 . 0 . 0      l     ��  ��    : 4 Written By: Ben Waldie <ben@automatedworkflows.com>     �   h   W r i t t e n   B y :   B e n   W a l d i e   < b e n @ a u t o m a t e d w o r k f l o w s . c o m >      l     ��  ��    ( " http://www.automatedworkflows.com     �   D   h t t p : / / w w w . a u t o m a t e d w o r k f l o w s . c o m      l     ��������  ��  ��       !   l     �� " #��   " � � Description: This script retrieves a list of OmniFocus tasks completed today, yesterday, this week, last week, or this month. It then summarizes the tasks in a new Evernote note.    # � $ $f   D e s c r i p t i o n :   T h i s   s c r i p t   r e t r i e v e s   a   l i s t   o f   O m n i F o c u s   t a s k s   c o m p l e t e d   t o d a y ,   y e s t e r d a y ,   t h i s   w e e k ,   l a s t   w e e k ,   o r   t h i s   m o n t h .   I t   t h e n   s u m m a r i z e s   t h e   t a s k s   i n   a   n e w   E v e r n o t e   n o t e . !  % & % l     �� ' (��   '   Version History:    ( � ) ) "   V e r s i o n   H i s t o r y : &  * + * l     �� , -��   ,   1.0.0 - Initial release    - � . . 0   1 . 0 . 0   -   I n i t i a l   r e l e a s e +  / 0 / l     �� 1 2��   1 � � 2.0.0 - Added support for including full project paths, context names, estimate time, start dates, modification dates, completion dates, and notes in task reports.    2 � 3 3H   2 . 0 . 0   -   A d d e d   s u p p o r t   f o r   i n c l u d i n g   f u l l   p r o j e c t   p a t h s ,   c o n t e x t   n a m e s ,   e s t i m a t e   t i m e ,   s t a r t   d a t e s ,   m o d i f i c a t i o n   d a t e s ,   c o m p l e t i o n   d a t e s ,   a n d   n o t e s   i n   t a s k   r e p o r t s . 0  4 5 4 l     �� 6 7��   6 ) # ----------------------------------    7 � 8 8 F   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 5  9 : 9 l     �� ; <��   ; %  Add porperty of notebook name;    < � = = >   A d d   p o r p e r t y   o f   n o t e b o o k   n a m e ; :  > ? > l     �� @ A��   @ 5 / Change the title of report note to date scope;    A � B B ^   C h a n g e   t h e   t i t l e   o f   r e p o r t   n o t e   t o   d a t e   s c o p e ; ?  C D C l     �� E F��   E 8 2 Add year scope, set Today as default report scope    F � G G d   A d d   y e a r   s c o p e ,   s e t   T o d a y   a s   d e f a u l t   r e p o r t   s c o p e D  H I H l     �� J K��   J $  Add the elapsed time of task;    K � L L <   A d d   t h e   e l a p s e d   t i m e   o f   t a s k ; I  M N M l     �� O P��   O ' ! Add the elapsed time of project;    P � Q Q B   A d d   t h e   e l a p s e d   t i m e   o f   p r o j e c t ; N  R S R l     �� T U��   T   Hide the N/A item;    U � V V &   H i d e   t h e   N / A   i t e m ; S  W X W l     �� Y Z��   Y &   By Zhang Jianhua, July 10, 2015    Z � [ [ @   B y   Z h a n g   J i a n h u a ,   J u l y   1 0 ,   2 0 1 5 X  \ ] \ l     �� ^ _��   ^ ) # ----------------------------------    _ � ` ` F   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ]  a b a l     ��������  ��  ��   b  c d c l     �� e f��   e $ ==============================    f � g g < = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = d  h i h l     ��������  ��  ��   i  j k j l     �� l m��   l a [ This property controls whether full project paths (including parent folders) are displayed    m � n n �   T h i s   p r o p e r t y   c o n t r o l s   w h e t h e r   f u l l   p r o j e c t   p a t h s   ( i n c l u d i n g   p a r e n t   f o l d e r s )   a r e   d i s p l a y e d k  o p o j     �� q�� 20 includefullprojectpaths includeFullProjectPaths q m     ��
�� boovtrue p  r s r l     ��������  ��  ��   s  t u t l     �� v w��   v h b the notebook of Evernote which stores the reports of completed task. By Zhang Jianhua, 10/07/2015    w � x x �   t h e   n o t e b o o k   o f   E v e r n o t e   w h i c h   s t o r e s   t h e   r e p o r t s   o f   c o m p l e t e d   t a s k .   B y   Z h a n g   J i a n h u a ,   1 0 / 0 7 / 2 0 1 5 u  y z y j    �� {�� 0 notebookname notebookName { m     | | � } } " O m n i f o c u s _ r e p o r t s z  ~  ~ l     ��������  ��  ��     � � � l     �� � ���   � L F These properties control whether additional task content is displayed    � � � � �   T h e s e   p r o p e r t i e s   c o n t r o l   w h e t h e r   a d d i t i o n a l   t a s k   c o n t e n t   i s   d i s p l a y e d �  � � � j    �� ��� (0 includetaskelapsed includeTaskElapsed � m    ��
�� boovtrue �  � � � j   	 �� ��� (0 includetaskcontext includeTaskContext � m   	 
��
�� boovfals �  � � � j    �� ��� 40 includetaskestimatedtime includeTaskEstimatedTime � m    ��
�� boovfals �  � � � j    �� ��� ,0 includetaskstartdate includeTaskStartDate � m    ��
�� boovtrue �  � � � j    �� ��� :0 includetaskmodificationdate includeTaskModificationDate � m    ��
�� boovfals �  � � � j    �� ��� 60 includetaskcompletiondate includeTaskCompletionDate � m    ��
�� boovtrue �  � � � j    �� ��� $0 includetasknotes includeTaskNotes � m    ��
�� boovtrue �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 5 / This setting specifies a name for the new note    � � � � ^   T h i s   s e t t i n g   s p e c i f i e s   a   n a m e   f o r   t h e   n e w   n o t e �  � � � j    �� ��� 0 thenotename theNoteName � m     � � � � � > O m n i F o c u s   C o m p l e t e d   T a s k   R e p o r t �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 7 1 Prompt the user to choose a scope for the report    � � � � b   P r o m p t   t h e   u s e r   t o   c h o o s e   a   s c o p e   f o r   t h e   r e p o r t �  � � � l     ����� � I    ������
�� .miscactvnull��� ��� null��  ��  ��  ��   �  � � � l    ����� � r     � � � I   �� � �
�� .gtqpchltns    @   @ ns   � J     � �  � � � m     � � � � � 
 T o d a y �  � � � m     � � � � �  Y e s t e r d a y �  � � � m    	 � � � � �  T h i s   W e e k �  � � � m   	 
 � � � � �  L a s t   W e e k �  � � � m   
  � � � � �  T h i s   M o n t h �  ��� � m     � � � � �  T h i s   Y e a r��   � �� � �
�� 
inSL � J     � �  ��� � m     � � � � � 
 T o d a y��   � �� � �
�� 
prmp � m     � � � � � , G e n e r a t e   a   r e p o r t   f o r : � �� ���
�� 
appr � m     � � � � � > O m n i F o c u s   C o m p l e t e d   T a s k   R e p o r t��   � o      ����  0 thereportscope theReportScope��  ��   �  � � � l   ) ����� � Z   ) � ����� � =      � � � o    ����  0 thereportscope theReportScope � m    ��
�� boovfals � L   # %����  ��  ��  ��  ��   �  � � � l  * 2 ����� � r   * 2 � � � n   * 0 � � � 4   + 0�� �
�� 
cobj � m   . /����  � o   * +����  0 thereportscope theReportScope � o      ����  0 thereportscope theReportScope��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � K E Calculate the task start and end dates, based on the specified scope    � � � � �   C a l c u l a t e   t h e   t a s k   s t a r t   a n d   e n d   d a t e s ,   b a s e d   o n   t h e   s p e c i f i e d   s c o p e �  � � � l  3 < ����� � r   3 < � � � I  3 8������
�� .misccurdldt    ��� null��  ��   � o      ���� 0 thestartdate theStartDate��  ��   �  � � � l  = F ����� � r   = F � � � m   = >����   � n       � � � 1   A E��
�� 
hour � o   > A���� 0 thestartdate theStartDate��  ��   �  � � � l  G P ����  r   G P m   G H����   n       1   K O��
�� 
min  o   H K���� 0 thestartdate theStartDate��  ��   �  l  Q Z���� r   Q Z	 m   Q R����  	 n      

 m   U Y��
�� 
scnd o   R U���� 0 thestartdate theStartDate��  ��    l  [ v���� r   [ v [   [ r [   [ n [   [ f o   [ ^���� 0 thestartdate theStartDate l  ^ e���� ]   ^ e m   ^ a����  1   a d��
�� 
hour��  ��   l  f m���� ]   f m m   f i���� ; 1   i l��
�� 
min ��  ��   m   n q�� ; o      �~�~ 0 
theenddate 
theEndDate��  ��    l     �}�|�{�}  �|  �{     l  w�!�z�y! Z   w�"#$�x" =   w |%&% o   w x�w�w  0 thereportscope theReportScope& m   x {'' �(( 
 T o d a y# r    �)*) b    �+,+ m    �-- �..  D a i l y   R e p o r t :  , n   � �/0/ 1   � ��v
�v 
dstr0 o   � ��u�u 0 thestartdate theStartDate* o      �t�t 0 thedaterange theDateRange$ 121 =   � �343 o   � ��s�s  0 thereportscope theReportScope4 m   � �55 �66  Y e s t e r d a y2 787 k   � �99 :;: r   � �<=< \   � �>?> o   � ��r�r 0 thestartdate theStartDate? ]   � �@A@ m   � ��q�q A 1   � ��p
�p 
days= o      �o�o 0 thestartdate theStartDate; BCB r   � �DED \   � �FGF o   � ��n�n 0 
theenddate 
theEndDateG ]   � �HIH m   � ��m�m I 1   � ��l
�l 
daysE o      �k�k 0 
theenddate 
theEndDateC J�jJ r   � �KLK b   � �MNM m   � �OO �PP  D a i l y   R e p o r t :  N n   � �QRQ 1   � ��i
�i 
dstrR o   � ��h�h 0 thestartdate theStartDateL o      �g�g 0 thedaterange theDateRange�j  8 STS =   � �UVU o   � ��f�f  0 thereportscope theReportScopeV m   � �WW �XX  T h i s   W e e kT YZY k   �0[[ \]\ W   � �^_^ r   � �`a` \   � �bcb o   � ��e�e 0 thestartdate theStartDatec ]   � �ded m   � ��d�d e 1   � ��c
�c 
daysa o      �b�b 0 thestartdate theStartDate_ =   � �fgf l  � �h�a�`h n   � �iji m   � ��_
�_ 
wkdyj o   � ��^�^ 0 thestartdate theStartDate�a  �`  g m   � ��]
�] 
sun ] klk W   �mnm r  opo [  qrq o  �\�\ 0 
theenddate 
theEndDater ]  
sts m  �[�[ t 1  	�Z
�Z 
daysp o      �Y�Y 0 
theenddate 
theEndDaten =   �uvu l  � �w�X�Ww n   � �xyx m   � ��V
�V 
wkdyy o   � ��U�U 0 
theenddate 
theEndDate�X  �W  v m   � �T
�T 
sat l z�Sz r  0{|{ b  ,}~} b  $� b   ��� m  �� ���  W e e k l y   R e p o r t :  � l ��R�Q� n  ��� 1  �P
�P 
dstr� o  �O�O 0 thestartdate theStartDate�R  �Q  � m   #�� ���    t h r o u g h  ~ l $+��N�M� n  $+��� 1  '+�L
�L 
dstr� o  $'�K�K 0 
theenddate 
theEndDate�N  �M  | o      �J�J 0 thedaterange theDateRange�S  Z ��� =  38��� o  34�I�I  0 thereportscope theReportScope� m  47�� ���  L a s t   W e e k� ��� k  ;��� ��� r  ;J��� \  ;F��� o  ;>�H�H 0 thestartdate theStartDate� ]  >E��� m  >A�G�G � 1  AD�F
�F 
days� o      �E�E 0 thestartdate theStartDate� ��� r  KZ��� \  KV��� o  KN�D�D 0 
theenddate 
theEndDate� ]  NU��� m  NQ�C�C � 1  QT�B
�B 
days� o      �A�A 0 
theenddate 
theEndDate� ��� W  [}��� r  kx��� \  kt��� o  kn�@�@ 0 thestartdate theStartDate� ]  ns��� m  no�?�? � 1  or�>
�> 
days� o      �=�= 0 thestartdate theStartDate� =  _j��� l _f��<�;� n  _f��� m  bf�:
�: 
wkdy� o  _b�9�9 0 thestartdate theStartDate�<  �;  � m  fi�8
�8 
sun � ��� W  ~���� r  ����� [  ����� o  ���7�7 0 
theenddate 
theEndDate� ]  ����� m  ���6�6 � 1  ���5
�5 
days� o      �4�4 0 
theenddate 
theEndDate� =  ����� l ����3�2� n  ����� m  ���1
�1 
wkdy� o  ���0�0 0 
theenddate 
theEndDate�3  �2  � m  ���/
�/ 
sat � ��.� r  ����� b  ����� b  ����� b  ����� m  ���� ���  W e e k l y   R e p o r t :  � l ����-�,� n  ����� 1  ���+
�+ 
dstr� o  ���*�* 0 thestartdate theStartDate�-  �,  � m  ���� ���    t h r o u g h  � l ����)�(� n  ����� 1  ���'
�' 
dstr� o  ���&�& 0 
theenddate 
theEndDate�)  �(  � o      �%�% 0 thedaterange theDateRange�.  � ��� =  ����� o  ���$�$  0 thereportscope theReportScope� m  ���� ���  T h i s   M o n t h� ��� k  �8�� ��� W  ����� r  ����� \  ����� o  ���#�# 0 thestartdate theStartDate� ]  ����� m  ���"�" � 1  ���!
�! 
days� o      � �  0 thestartdate theStartDate� =  ����� l ������ n  ����� 1  ���
� 
day � o  ���� 0 thestartdate theStartDate�  �  � m  ���� � ��� W  ���� r  �	��� [  ���� o  ���� 0 
theenddate 
theEndDate� ]  ���� m  � �� � 1   �
� 
days� o      �� 0 
theenddate 
theEndDate� > ����� l ������ n  ����� m  ���
� 
mnth� o  ���� 0 
theenddate 
theEndDate�  �  � l ������ n  ��� � m  ���
� 
mnth  o  ���� 0 thestartdate theStartDate�  �  �  r   \   o  �� 0 
theenddate 
theEndDate ]   m  ��  1  �
� 
days o      �� 0 
theenddate 
theEndDate 	�
	 r  8

 b  4 b  , b  ( m    �   M o n t h l y   R e p o r t :   l  '�	� n   ' 1  #'�
� 
dstr o   #�� 0 thestartdate theStartDate�	  �   m  (+ �    t h r o u g h   l ,3�� n  ,3 1  /3�
� 
dstr o  ,/�� 0 
theenddate 
theEndDate�  �   o      �� 0 thedaterange theDateRange�
  �  =  ;@ o  ;<� �   0 thereportscope theReportScope m  <?   �!!  T h i s   Y e a r "��" k  C�## $%$ W  Ck&'& r  Yf()( \  Yb*+* o  Y\���� 0 thestartdate theStartDate+ ]  \a,-, m  \]���� - 1  ]`��
�� 
days) o      ���� 0 thestartdate theStartDate' > GX./. l GN0����0 n  GN121 1  JN��
�� 
year2 o  GJ���� 0 thestartdate theStartDate��  ��  / l NW3����3 n  NW454 1  SW��
�� 
year5 l NS6����6 I NS������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  % 787 r  ly9:9 [  lu;<; o  lo���� 0 thestartdate theStartDate< ]  ot=>= m  op���� > 1  ps��
�� 
days: o      ���� 0 thestartdate theStartDate8 ?@? W  z�ABA r  ��CDC [  ��EFE o  ������ 0 
theenddate 
theEndDateF ]  ��GHG m  ������ H 1  ����
�� 
daysD o      ���� 0 
theenddate 
theEndDateB > ~�IJI l ~�K����K n  ~�LML 1  ����
�� 
yearM o  ~����� 0 
theenddate 
theEndDate��  ��  J l ��N����N n  ��OPO 1  ����
�� 
yearP l ��Q����Q I ��������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  @ RSR r  ��TUT \  ��VWV o  ������ 0 
theenddate 
theEndDateW ]  ��XYX m  ������ Y 1  ����
�� 
daysU o      ���� 0 
theenddate 
theEndDateS Z��Z r  ��[\[ b  ��]^] b  ��_`_ b  ��aba m  ��cc �dd  A n n u a l   R e p o r t :  b l ��e����e n  ��fgf 1  ����
�� 
dstrg o  ������ 0 thestartdate theStartDate��  ��  ` m  ��hh �ii    t h r o u g h  ^ l ��j����j n  ��klk 1  ����
�� 
dstrl o  ������ 0 
theenddate 
theEndDate��  ��  \ o      ���� 0 thedaterange theDateRange��  ��  �x  �z  �y    mnm l     ��������  ��  ��  n opo l ��q����q r  ��rsr o  ������ 0 thedaterange theDateRanges o      ���� 0 thenotename theNoteName��  ��  p tut l     ��������  ��  ��  u vwv l     ��xy��  x - ' Begin preparing the task list as HTML.   y �zz N   B e g i n   p r e p a r i n g   t h e   t a s k   l i s t   a s   H T M L .w {|{ l     ��}~��  } q k set theProgressDetail to "<html><body><h1>Completed Tasks</h1><br><b>" & theDateRange & "</b><br><hr><br>"   ~ � �   s e t   t h e P r o g r e s s D e t a i l   t o   " < h t m l > < b o d y > < h 1 > C o m p l e t e d   T a s k s < / h 1 > < b r > < b > "   &   t h e D a t e R a n g e   &   " < / b > < b r > < h r > < b r > "| ��� l �������� r  ����� m  ���� ��� P < h t m l > < b o d y > < h 1 > C o m p l e t e d   T a s k s < / h 1 > < h r >� o      ���� &0 theprogressdetail theProgressDetail��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � F @ Retrieve a list of projects modified within the specified scope   � ��� �   R e t r i e v e   a   l i s t   o f   p r o j e c t s   m o d i f i e d   w i t h i n   t h e   s p e c i f i e d   s c o p e� ��� l �������� r  ����� m  ����
�� boovfals� o      ���� .0 modifiedtasksdetected modifiedTasksDetected��  ��  � ��� l ������� O  ���� O  ���� k  � �� ��� r  ���� 6���� 2  ����
�� 
FCfx� F   ��� ? ��� n ��� 1  ��
�� 
FCDm�  g  � o  ���� 0 thestartdate theStartDate� A ��� 1  ��
�� 
FCDm� o  ���� 0 
theenddate 
theEndDate� o      ���� *0 themodifiedprojects theModifiedProjects� ��� l ��������  ��  ��  � ��� l ������  � ) # Loop through any detected projects   � ��� F   L o o p   t h r o u g h   a n y   d e t e c t e d   p r o j e c t s� ���� Y   �������� k  0��� ��� r  0=��� n  09��� 4  39���
�� 
cobj� 1  68��
�� 
OSav� o  03���� *0 themodifiedprojects theModifiedProjects� o      ���� &0 thecurrentproject theCurrentProject� ��� l >>��������  ��  ��  � ��� l >>������  � E ? Retrieve any project tasks modified within the specified scope   � ��� ~   R e t r i e v e   a n y   p r o j e c t   t a s k s   m o d i f i e d   w i t h i n   t h e   s p e c i f i e d   s c o p e� ��� r  >~��� l >z������ 6>z��� n  >E��� 2  AE��
�� 
FCft� o  >A���� &0 thecurrentproject theCurrentProject� F  Hy��� F  In��� F  Ja��� =  KT��� n LP��� 1  LP��
�� 
FCcd�  g  LL� m  QS��
�� boovtrue� ? U`��� 1  VZ��
�� 
FCDm� o  [_���� 0 thestartdate theStartDate� A bm��� 1  cg��
�� 
FCDm� o  hl���� 0 
theenddate 
theEndDate� =  ox��� 1  pt��
�� 
FC#t� m  uw����  ��  ��  � o      ���� &0 thecompletedtasks theCompletedTasks� ��� l ��������  ��  ��  � ��� l ������  � . ( Process the project if tasks were found   � ��� P   P r o c e s s   t h e   p r o j e c t   i f   t a s k s   w e r e   f o u n d� ���� Z  �������� > ���� o  ����� &0 thecompletedtasks theCompletedTasks� J  ������  � k  ���� ��� r  ����� m  ����
�� boovtrue� o      ���� .0 modifiedtasksdetected modifiedTasksDetected� ��� l ����������  ��  ��  � ��� l ��������  � 9 3 Append the project folder path to the project name   � ��� f   A p p e n d   t h e   p r o j e c t   f o l d e r   p a t h   t o   t h e   p r o j e c t   n a m e� ��� r  ����� m  ���� ���  � o      ���� ,0 theprojectfolderpath theProjectFolderPath� ��� Z  ��������� =  ����� o  ���� 20 includefullprojectpaths includeFullProjectPaths� m  ���~
�~ boovtrue� k  ��    r  �� n  �� I  ���}�|�} ,0 getprojectfolderpath getProjectFolderPath �{ o  ���z�z &0 thecurrentproject theCurrentProject�{  �|    f  �� o      �y�y ,0 theprojectfolderpath theProjectFolderPath 	�x	 Z ��
�w�v
 > �� o  ���u�u ,0 theprojectfolderpath theProjectFolderPath m  �� �   r  �� b  �� o  ���t�t ,0 theprojectfolderpath theProjectFolderPath m  �� �    >   o      �s�s ,0 theprojectfolderpath theProjectFolderPath�w  �v  �x  ��  ��  �  l ���r�q�p�r  �q  �p    l ���o�o   , & Append the project name to the report    � L   A p p e n d   t h e   p r o j e c t   n a m e   t o   t h e   r e p o r t  r  ��  b  ��!"! b  ��#$# b  ��%&% b  ��'(' b  ��)*) b  ��+,+ o  ���n�n &0 theprogressdetail theProgressDetail, m  ��-- �..  < h 2 >* o  ���m�m ,0 theprojectfolderpath theProjectFolderPath( n  ��/0/ 1  ���l
�l 
pnam0 o  ���k�k &0 thecurrentproject theCurrentProject& m  ��11 �22 
 < / h 2 >$ o  ���j
�j 
ret " m  ��33 �44  < b r > < u l >  o      �i�i &0 theprogressdetail theProgressDetail 565 l ���h�g�f�h  �g  �f  6 787 l ���e9:�e  9 6 0 Loop through the detected tasks for the project   : �;; `   L o o p   t h r o u g h   t h e   d e t e c t e d   t a s k s   f o r   t h e   p r o j e c t8 <=< r  ��>?> m  ���d�d  ? o      �c�c $0 totalelapsedtime totalElapsedTime= @A@ Y  �5B�bCD�aB k  0EE FGF r  HIH n  JKJ 4  	�`L
�` 
cobjL 1  �_
�_ 
OSbvK o  	�^�^ &0 thecompletedtasks theCompletedTasksI o      �]�]  0 thecurrenttask theCurrentTaskG MNM l �\�[�Z�\  �[  �Z  N OPO l �YQR�Y  Q / ) Append the tasks's name to the task list   R �SS R   A p p e n d   t h e   t a s k s ' s   n a m e   t o   t h e   t a s k   l i s tP TUT r  'VWV b  #XYX b  Z[Z o  �X�X &0 theprogressdetail theProgressDetail[ m  \\ �]]  < l i >Y n  "^_^ 1  "�W
�W 
pnam_ o  �V�V  0 thecurrenttask theCurrentTaskW o      �U�U &0 theprogressdetail theProgressDetailU `a` l ((�T�S�R�T  �S  �R  a bcb l ((�Q�P�O�Q  �P  �O  c ded l ((�Nfg�N  f 9 3 Set up a variable for the task detail, if relevant   g �hh f   S e t   u p   a   v a r i a b l e   f o r   t h e   t a s k   d e t a i l ,   i f   r e l e v a n te iji r  (/klk m  (+mm �nn  l o      �M�M 0 thetaskdetail theTaskDetailj opo l 00�L�K�J�L  �K  �J  p qrq l 00�Ist�I  s   Append the elapsed time    t �uu 2   A p p e n d   t h e   e l a p s e d   t i m e  r vwv Z  0�xy�H�Gx =  07z{z o  05�F�F (0 includetaskelapsed includeTaskElapsed{ m  56�E
�E boovtruey k  :�|| }~} r  :E� n  :A��� 1  =A�D
�D 
FCno� o  :=�C�C  0 thecurrenttask theCurrentTask� o      �B�B 0 notetext noteText~ ��� l FF�A�@�?�A  �@  �?  � ��>� Z  F����=�<� @  FU��� l FQ��;�:� I FQ�9��8
�9 .corecnte****       ****� n  FM��� 2 IM�7
�7 
cwor� o  FI�6�6 0 notetext noteText�8  �;  �:  � m  QT�5�5 � k  X��� ��� r  Xu��� c  Xq��� l Xm��4�3� n  Xm��� 7  [m�2��
�2 
cobj� 4  af�1�
�1 
cwor� m  de�0�0��� 4  gl�/�
�/ 
cwor� m  jk�.�.��� o  X[�-�- 0 notetext noteText�4  �3  � m  mp�,
�, 
ctxt� o      �+�+ 0 
lastendstr 
lastEndStr� ��� r  v���� c  v���� l v���*�)� n  v���� 7  y��(��
�( 
cobj� 4  ��'�
�' 
cwor� m  ���&�&��� 4  ���%�
�% 
cwor� m  ���$�$��� o  vy�#�# 0 notetext noteText�*  �)  � m  ���"
�" 
ctxt� o      �!�! 0 lastbeginstr lastBeginStr� ��� l ��� ���   �  �  � ��� Z  ������� G  ����� = ����� o  ���� 0 
lastendstr 
lastEndStr� m  ���� ���  T E n d� = ����� o  ���� 0 lastbeginstr lastBeginStr� m  ���� ���  T B e g i n� k  ���� ��� r  ����� c  ����� l ������ n  ����� 7  �����
� 
cobj� 4  ����
� 
cwor� m  ������� 4  ����
� 
cwor� m  ������� o  ���� 0 notetext noteText�  �  � m  ���
� 
ctxt� o      �� 0 timestr timeStr� ��� r  ����� l ������ c  ����� l ������ c  ����� l ����
�	� n  ����� 7  �����
� 
cobj� 4  ����
� 
cwor� m  ������� 4  ����
� 
cwor� m  ������� o  ���� 0 timestr timeStr�
  �	  � m  ���
� 
ctxt�  �  � m  ���
� 
nmbr�  �  � o      � �  0 elapsedtime elapsedTime� ��� l ����������  ��  ��  � ��� l ��������  � . ( set daysElapsed to elapsedTime div days   � ��� P   s e t   d a y s E l a p s e d   t o   e l a p s e d T i m e   d i v   d a y s� ��� l ��������  � ; 5 set hoursElapsed to (elapsedTime mod days) div hours   � ��� j   s e t   h o u r s E l a p s e d   t o   ( e l a p s e d T i m e   m o d   d a y s )   d i v   h o u r s� ��� l ��������  � @ : set minutesElapsed to (elapsedTime mod hours) div minutes   � ��� t   s e t   m i n u t e s E l a p s e d   t o   ( e l a p s e d T i m e   m o d   h o u r s )   d i v   m i n u t e s� ��� r  ���� _  ����� o  ������ 0 elapsedtime elapsedTime� 1  ����
�� 
min � o      ���� *0 totalminuteselapsed totalMinutesElapsed� ��� l ������  � 3 - set secondsremain to elapsedTime mod minutes   � ��� Z   s e t   s e c o n d s r e m a i n   t o   e l a p s e d T i m e   m o d   m i n u t e s� ��� l ������  � � � set elapsedTimeStr to (totalMinutesElapsed as string) & " Minutes" & (daysElapsed as string) & " Days" & (hoursElapsed as string) & " Hours" & (minutesElapsed as string) & " Minutes"   � ���n   s e t   e l a p s e d T i m e S t r   t o   ( t o t a l M i n u t e s E l a p s e d   a s   s t r i n g )   &   "   M i n u t e s "   &   ( d a y s E l a p s e d   a s   s t r i n g )   &   "   D a y s "   &   ( h o u r s E l a p s e d   a s   s t r i n g )   &   "   H o u r s "   &   ( m i n u t e s E l a p s e d   a s   s t r i n g )   &   "   M i n u t e s "� ��� r  ��� l 	������ c  	��� o  ���� *0 totalminuteselapsed totalMinutesElapsed� m  ��
�� 
TEXT��  ��  � o      ����  0 elapsedtimestr elapsedTimeStr� � � l ��������  ��  ��     r   n   1  ��
�� 
FCEM o  ����  0 thecurrenttask theCurrentTask o      ���� $0 estimatedminutes estimatedMinutes  r  %	
	 c  ! o  ���� $0 estimatedminutes estimatedMinutes m   ��
�� 
ctxt
 o      ���� 0 estimatedtime estimatedTime �� Z  &��� > &- o  &)���� 0 elapsedtime elapsedTime m  ),��
�� 
msng k  0{  r  0K b  0G l 0C���� c  0C b  0? b  07  o  03����  0 elapsedtimestr elapsedTimeStr  m  36!! �""    m i n u t e s   ( l 7>#����# n  7>$%$ 1  :>��
�� 
FCEM% o  7:����  0 thecurrenttask theCurrentTask��  ��   m  ?B��
�� 
ctxt��  ��   m  CF&& �'' &   m i n u t e s   e s t i m a t e d ) o      ���� 0 
elapsedstr 
elapsedStr ()( l LL��������  ��  ��  ) *+* l LL��,-��  ,   add to totalElapsedTime   - �.. 0   a d d   t o   t o t a l E l a p s e d T i m e+ /0/ r  L[121 c  LW343 [  LS565 o  LO���� $0 totalelapsedtime totalElapsedTime6 o  OR���� *0 totalminuteselapsed totalMinutesElapsed4 m  SV��
�� 
nmbr2 o      ���� 0 	totaltime 	totalTime0 787 r  \c9:9 o  \_���� 0 	totaltime 	totalTime: o      ���� $0 totalelapsedtime totalElapsedTime8 ;<; l dd��������  ��  ��  < =��= r  d{>?> n  dw@A@ I  ew��B���� $0 appendtaskdetail appendTaskDetailB CDC o  eh���� 0 thetaskdetail theTaskDetailD EFE o  hk���� 0 
elapsedstr 
elapsedStrF GHG m  knII �JJ  E l a p s e d   t i m eH K��K m  nqLL �MM  ��  ��  A  f  de? o      ���� 0 thetaskdetail theTaskDetail��  ��   k  ~�NN OPO r  ~�QRQ l ~�S����S b  ~�TUT o  ~�����  0 elapsedtimestr elapsedTimeStrU m  ��VV �WW    m i n u t e s��  ��  R o      ���� 0 
elapsedstr 
elapsedStrP X��X r  ��YZY n  ��[\[ I  ����]���� $0 appendtaskdetail appendTaskDetail] ^_^ o  ������ 0 thetaskdetail theTaskDetail_ `a` o  ������ 0 
elapsedstr 
elapsedStra bcb m  ��dd �ee  E l a p s e d   t i m ec f��f m  ��gg �hh  ��  ��  \  f  ��Z o      ���� 0 thetaskdetail theTaskDetail��  ��  �  �  �  �=  �<  �>  �H  �G  w iji l ����������  ��  ��  j klk l ����mn��  m , & Append the context to the task detail   n �oo L   A p p e n d   t h e   c o n t e x t   t o   t h e   t a s k   d e t a i ll pqp Z  ��rs����r =  ��tut o  ������ (0 includetaskcontext includeTaskContextu m  ����
�� boovtrues k  ��vv wxw r  ��yzy n  ��{|{ m  ����
�� 
FCct| o  ������  0 thecurrenttask theCurrentTaskz o      ���� 0 
thecontext 
theContextx }��} Z ��~����~ > ����� o  ������ 0 
thecontext 
theContext� m  ����
�� 
msng r  ����� n  ����� I  ��������� $0 appendtaskdetail appendTaskDetail� ��� o  ������ 0 thetaskdetail theTaskDetail� ��� n  ����� 1  ����
�� 
pnam� o  ������ 0 
thecontext 
theContext� ��� m  ���� ���  C o n t e x t� ���� m  ���� ���  ��  ��  �  f  ��� o      ���� 0 thetaskdetail theTaskDetail��  ��  ��  ��  ��  q ��� l ����������  ��  ��  � ��� l ��������  � 3 - Append the estimated time to the task detail   � ��� Z   A p p e n d   t h e   e s t i m a t e d   t i m e   t o   t h e   t a s k   d e t a i l� ��� Z �������� =  ����� o  ������ 40 includetaskestimatedtime includeTaskEstimatedTime� m  ����
�� boovtrue� r  ���� n  ���� I  �������� $0 appendtaskdetail appendTaskDetail� ��� o  � ���� 0 thetaskdetail theTaskDetail� ��� n   ��� 1  ��
�� 
FCEM� o   ����  0 thecurrenttask theCurrentTask� ��� m  
�� ���  E s t i m a t e d   T i m e� ���� m  
�� ���    m i n u t e s��  ��  �  f  ��� o      ���� 0 thetaskdetail theTaskDetail��  ��  � ��� l ��������  ��  ��  � ��� l ������  � / ) Append the start date to the task detail   � ��� R   A p p e n d   t h e   s t a r t   d a t e   t o   t h e   t a s k   d e t a i l� ��� r  '��� n  #��� 1  #��
�� 
FCDs� o  ����  0 thecurrenttask theCurrentTask� o      ���� 0 	startdate 	startDate� ��� Z  ([������� > (/��� o  (+���� 0 	startdate 	startDate� m  +.��
�� 
msng� Z 2W������� =  29��� o  27���� ,0 includetaskstartdate includeTaskStartDate� m  78��
�� boovtrue� r  <S��� n  <O��� I  =O������� $0 appendtaskdetail appendTaskDetail� ��� o  =@���� 0 thetaskdetail theTaskDetail� ��� o  @C���� 0 	startdate 	startDate� ��� m  CF�� ���  S t a r t   D a t e� ���� m  FI�� ���  ��  ��  �  f  <=� o      ���� 0 thetaskdetail theTaskDetail��  ��  ��  ��  � ��� l \\��~�}�  �~  �}  � ��� l \\�|���|  � 6 0 Append the modification date to the task detail   � ��� `   A p p e n d   t h e   m o d i f i c a t i o n   d a t e   t o   t h e   t a s k   d e t a i l� ��� Z \����{�z� =  \c��� o  \a�y�y :0 includetaskmodificationdate includeTaskModificationDate� m  ab�x
�x boovtrue� r  f���� n  f}��� I  g}�w��v�w $0 appendtaskdetail appendTaskDetail� ��� o  gj�u�u 0 thetaskdetail theTaskDetail� ��� n  jq��� 1  mq�t
�t 
FCDm� o  jm�s�s  0 thecurrenttask theCurrentTask� ��� m  qt�� ��� " M o d i f i c a t i o n   D a t e� ��r� m  tw�� ���  �r  �v  �  f  fg� o      �q�q 0 thetaskdetail theTaskDetail�{  �z  � ��� l ���p�o�n�p  �o  �n  � ��� l ���m���m  � 4 . Append the completion date to the task detail   � ��� \   A p p e n d   t h e   c o m p l e t i o n   d a t e   t o   t h e   t a s k   d e t a i l�    Z ���l�k =  �� o  ���j�j 60 includetaskcompletiondate includeTaskCompletionDate m  ���i
�i boovtrue r  �� n  ��	 I  ���h
�g�h $0 appendtaskdetail appendTaskDetail
  o  ���f�f 0 thetaskdetail theTaskDetail  n  �� 1  ���e
�e 
FCdc o  ���d�d  0 thecurrenttask theCurrentTask  m  �� �  C o m p l e t i o n   D a t e �c m  �� �  �c  �g  	  f  �� o      �b�b 0 thetaskdetail theTaskDetail�l  �k    l ���a�`�_�a  �`  �_    l ���^�^   1 + Append the task's notes to the task detail    � V   A p p e n d   t h e   t a s k ' s   n o t e s   t o   t h e   t a s k   d e t a i l   r  ��!"! n  ��#$# 1  ���]
�] 
FCno$ o  ���\�\  0 thecurrenttask theCurrentTask" o      �[�[ 0 noteall noteAll  %&% r  ��'(' n  ��)*) I  ���Z+�Y�Z .0 getoriginaltextofnote getOriginalTextOfNote+ ,�X, o  ���W�W 0 noteall noteAll�X  �Y  *  f  ��( o      �V�V 0 noteori noteOri& -.- Z  ��/0�U�T/ ?  ��121 l ��3�S�R3 I ���Q4�P
�Q .corecnte****       ****4 o  ���O�O 0 noteori noteOri�P  �S  �R  2 m  ���N�N  0 Z ��56�M�L5 =  ��787 o  ���K�K $0 includetasknotes includeTaskNotes8 m  ���J
�J boovtrue6 r  ��9:9 n  ��;<; I  ���I=�H�I $0 appendtaskdetail appendTaskDetail= >?> o  ���G�G 0 thetaskdetail theTaskDetail? @A@ o  ���F�F 0 noteori noteOriA BCB m  ��DD �EE  N o t eC F�EF m  ��GG �HH  �E  �H  <  f  ��: o      �D�D 0 thetaskdetail theTaskDetail�M  �L  �U  �T  . IJI l ���C�B�A�C  �B  �A  J KLK l ���@MN�@  M . ( Append the task detail to the task list   N �OO P   A p p e n d   t h e   t a s k   d e t a i l   t o   t h e   t a s k   l i s tL PQP Z  � RS�?�>R > �TUT o  ��=�= 0 thetaskdetail theTaskDetailU m  VV �WW  S r  	XYX b  	Z[Z b  	\]\ b  	^_^ o  	�<�< &0 theprogressdetail theProgressDetail_ m  `` �aa . < p   s t y l e = " c o l o r :   g r a y " >] o  �;�; 0 thetaskdetail theTaskDetail[ m  bb �cc  < / p >Y o      �:�: &0 theprogressdetail theProgressDetail�?  �>  Q ded l !!�9�8�7�9  �8  �7  e fgf l !!�6hi�6  h 0 * Finish adding the task's HTML to the list   i �jj T   F i n i s h   a d d i n g   t h e   t a s k ' s   H T M L   t o   t h e   l i s tg k�5k r  !0lml b  !,non b  !(pqp o  !$�4�4 &0 theprogressdetail theProgressDetailq m  $'rr �ss 
 < / l i >o o  (+�3
�3 
ret m o      �2�2 &0 theprogressdetail theProgressDetail�5  
�b 
OSbvC m  ���1�1 D n  �tut 1  � �0
�0 
lengu o  ���/�/ &0 thecompletedtasks theCompletedTasks�a  A vwv l 66�.�-�,�.  �-  �,  w xyx Z  6�z{�+�*z ?  6;|}| o  69�)�) $0 totalelapsedtime totalElapsedTime} m  9:�(�(  { k  >�~~ � r  >I��� ]  >E��� o  >A�'�' $0 totalelapsedtime totalElapsedTime� m  AD�&�& <� o      �%�% 00 totalelapsedtimesecond totalElapsedTimeSecond� ��� r  JU��� _  JQ��� o  JM�$�$ 00 totalelapsedtimesecond totalElapsedTimeSecond� 1  MP�#
�# 
days� o      �"�" 0 dayselapsed daysElapsed� ��� r  Ve��� _  Va��� l V]��!� � `  V]��� o  VY�� 00 totalelapsedtimesecond totalElapsedTimeSecond� 1  Y\�
� 
days�!  �   � 1  ]`�
� 
hour� o      �� 0 hourselapsed hoursElapsed� ��� r  fu��� _  fq��� l fm���� `  fm��� o  fi�� 00 totalelapsedtimesecond totalElapsedTimeSecond� 1  il�
� 
hour�  �  � 1  mp�
� 
min � o      ��  0 minuteselapsed minutesElapsed� ��� r  v���� _  v}��� o  vy�� 00 totalelapsedtimesecond totalElapsedTimeSecond� 1  y|�
� 
min � o      �� *0 totalminuteselapsed totalMinutesElapsed� ��� r  ����� `  ����� o  ���� 00 totalelapsedtimesecond totalElapsedTimeSecond� 1  ���
� 
min � o      �� 0 secondsremain  � ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� l ������ c  ����� o  ���� 0 dayselapsed daysElapsed� m  ���
� 
TEXT�  �  � m  ���� ���    D a y s  � l �����
� c  ����� o  ���	�	 0 hourselapsed hoursElapsed� m  ���
� 
TEXT�  �
  � m  ���� ���    H o u r s  � l ������ c  ����� o  ����  0 minuteselapsed minutesElapsed� m  ���
� 
TEXT�  �  � m  ���� ���    M i n u t e s  � o      �� *0 titalelapsedtimestr titalElapsedTimeStr� ��� l ����� �  �  �   � ���� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� o  ������ &0 theprogressdetail theProgressDetail� m  ���� ��� \ E l a p s e d   t i m e   o f   p r o j e c t   " < i > < f o n t   c o l o r = " r e d " >� o  ������ ,0 theprojectfolderpath theProjectFolderPath� n  ����� 1  ����
�� 
pnam� o  ������ &0 thecurrentproject theCurrentProject� m  ���� ��� B < / f o n t > < / i > " :   < f o n t   c o l o r = " b l u e " >� o  ������ $0 totalelapsedtime totalElapsedTime� m  ���� ���    M i n u t e s   (� o  ������ *0 titalelapsedtimestr titalElapsedTimeStr� m  ���� ���  ) < / f o n t >� o      ���� &0 theprogressdetail theProgressDetail��  �+  �*  y ��� l ����������  ��  ��  � ��� r  ����� b  ����� b  ����� o  ������ &0 theprogressdetail theProgressDetail� m  ���� ��� 
 < / u l >� o  ����
�� 
ret � o      ���� &0 theprogressdetail theProgressDetail� ���� l ����������  ��  ��  ��  ��  ��  ��  
�� 
OSav� m  "#���� � n  #+��� 1  &*��
�� 
leng� o  #&���� *0 themodifiedprojects theModifiedProjects��  ��  � 4 �����
�� 
docu� m  ������ � m  �����                                                                                  OFOC  alis    >  Mac                        Зu�H+     �OmniFocus.app                                                   ��Ѳ��        ����  	                Applications    ЗU      Ѳ4       �  Mac:Applications: OmniFocus.app     O m n i F o c u s . a p p    M a c  Applications/OmniFocus.app  / ��  ��  ��  � ��� l ������ r  ��� b  
��� o  ���� &0 theprogressdetail theProgressDetail� m  	�� ���  < / b o d y > < / h t m l >� o      ���� &0 theprogressdetail theProgressDetail��  ��  � � � l     ��������  ��  ��     l     ����   9 3 Notify the user if no projects or tasks were found    � f   N o t i f y   t h e   u s e r   i f   n o   p r o j e c t s   o r   t a s k s   w e r e   f o u n d  l 1���� Z  1	
����	 =   o  ���� .0 modifiedtasksdetected modifiedTasksDetected m  ��
�� boovfals
 k  -  I *��
�� .sysodisAaleR        TEXT m   � > O m n i F o c u s   C o m p l e t e d   T a s k   R e p o r t ����
�� 
mesS b  & b  " m    � B N o   m o d i f i e d   t a s k s   w e r e   f o u n d   f o r   o   !����  0 thereportscope theReportScope m  "% �  .��   �� L  +-����  ��  ��  ��  ��  ��    l     ��������  ��  ��    !  l     ��"#��  " #  Create the note in Evernote.   # �$$ :   C r e a t e   t h e   n o t e   i n   E v e r n o t e .! %&% l 2j'����' O  2j()( k  8i** +,+ I 8=������
�� .miscactvnull��� ��� null��  ��  , -.- r  >]/0/ I >Y����1
�� .EVRNcrntnull��� ��� null��  1 ��23
�� 
Ennb2 o  BG���� 0 notebookname notebookName3 ��45
�� 
Entt4 o  JO���� 0 thenotename theNoteName5 ��6��
�� 
Enhl6 o  RU���� &0 theprogressdetail theProgressDetail��  0 o      ���� 0 thenote theNote. 7��7 I ^i����8
�� .EVRNonwnnull��� ��� null��  8 ��9��
�� 
EV179 o  be���� 0 thenote theNote��  ��  ) m  25::�                                                                                  EVRN  alis    :  Mac                        Зu�H+     �Evernote.app                                                    �Ѯ��        ����  	                Applications    ЗU      Ѯ0y       �  Mac:Applications: Evernote.app    E v e r n o t e . a p p    M a c  Applications/Evernote.app   / ��  ��  ��  & ;<; l     ��������  ��  ��  < =>= l     ��?@��  ? 6 0 This handler gets the folder path for a project   @ �AA `   T h i s   h a n d l e r   g e t s   t h e   f o l d e r   p a t h   f o r   a   p r o j e c t> BCB i    !DED I      ��F���� ,0 getprojectfolderpath getProjectFolderPathF G��G o      ���� 0 
theproject 
theProject��  ��  E O     cHIH k    bJJ KLK r    MNM m    OO �PP  N o      ���� 0 thefolderpath theFolderPathL QRQ Z    QST����S I   ��U��
�� .coredoexnull���     ****U n    VWV m   	 ��
�� 
FCArW o    	���� 0 
theproject 
theProject��  T k    MXX YZY r    [\[ n    ]^] m    ��
�� 
FCAr^ o    ���� 0 
theproject 
theProject\ o      ���� 0 	thefolder 	theFolderZ _��_ T    M`` k    Haa bcb Z   ,de����d >    fgf o    ���� 0 thefolderpath theFolderPathg m    hh �ii  e r   # (jkj b   # &lml m   # $nn �oo    :  m o   $ %���� 0 thefolderpath theFolderPathk o      ���� 0 thefolderpath theFolderPath��  ��  c pqp r   - 4rsr b   - 2tut n   - 0vwv 1   . 0��
�� 
pnamw o   - .���� 0 	thefolder 	theFolderu o   0 1���� 0 thefolderpath theFolderPaths o      ���� 0 thefolderpath theFolderPathq x��x Z   5 Hyz��{y =   5 <|}| n   5 :~~ m   8 :��
�� 
pcls n   5 8��� 1   6 8��
�� 
ctnr� o   5 6���� 0 	thefolder 	theFolder} m   : ;��
�� 
FCArz r   ? D��� n   ? B��� 1   @ B��
�� 
ctnr� o   ? @���� 0 	thefolder 	theFolder� o      ���� 0 	thefolder 	theFolder��  {  S   G H��  ��  ��  ��  R ��� Z  R _������� =   R U��� o   R S���� 0 thefolderpath theFolderPath� m   S T�� ���  � r   X [��� m   X Y�� ���  � o      ���� 0 thefolderpath theFolderPath��  ��  � ���� L   ` b�� o   ` a���� 0 thefolderpath theFolderPath��  I m     ���                                                                                  OFOC  alis    >  Mac                        Зu�H+     �OmniFocus.app                                                   ��Ѳ��        ����  	                Applications    ЗU      Ѳ4       �  Mac:Applications: OmniFocus.app     O m n i F o c u s . a p p    M a c  Applications/OmniFocus.app  / ��  C ��� l     ��������  ��  ��  � ��� l     ������  � 6 0 This handler appends a value to the task detail   � ��� `   T h i s   h a n d l e r   a p p e n d s   a   v a l u e   t o   t h e   t a s k   d e t a i l� ��� i   " %��� I      ������� $0 appendtaskdetail appendTaskDetail� ��� o      ���� 0 thetaskdetail theTaskDetail� ��� o      ���� 0 thevalue theValue� ��� o      ���� 0 	theprefix 	thePrefix� ���� o      ���� 0 	thesuffix 	theSuffix��  ��  � k     2�� ��� Z    ������� >    ��� o     ���� 0 thetaskdetail theTaskDetail� m    �� ���  � r    ��� b    	��� o    ���� 0 thetaskdetail theTaskDetail� m    �� ���  < b r >� o      ���� 0 thetaskdetail theTaskDetail��  ��  � ��� Z    )������ G    ��� =    ��� o    �� 0 thevalue theValue� m    �~
�~ 
msng� =    ��� o    �}�} 0 thevalue theValue� m    �� ���  � r    !��� m    �� ���  N / A� o      �|�| 0 thevalue theValue��  � r   $ )��� b   $ '��� o   $ %�{�{ 0 thevalue theValue� o   % &�z�z 0 	thesuffix 	theSuffix� o      �y�y 0 thevalue theValue� ��x� L   * 2�� b   * 1��� b   * /��� b   * -��� o   * +�w�w 0 thetaskdetail theTaskDetail� o   + ,�v�v 0 	theprefix 	thePrefix� m   - .�� ���  :  � o   / 0�u�u 0 thevalue theValue�x  � ��� l     �t�s�r�t  �s  �r  � ��� l     �q���q  � M G get original text of note, without the last time string. Zhang Jianhua   � ��� �   g e t   o r i g i n a l   t e x t   o f   n o t e ,   w i t h o u t   t h e   l a s t   t i m e   s t r i n g .   Z h a n g   J i a n h u a� ��p� i   & )��� I      �o��n�o .0 getoriginaltextofnote getOriginalTextOfNote� ��m� o      �l�l 0 noteall noteAll�m  �n  � k     ��� ��� r     ��� o     �k�k 0 noteall noteAll� o      �j�j 0 notetext noteText� ��� r    ��� o    �i�i 0 notetext noteText� o      �h�h 0 orinote oriNote� ��� r    ��� m    	�� ���  � o      �g�g 0 
newtimestr 
newTimeStr� ��� Z    ������ ?    ��� l   ��f�e� I   �d��c
�d .corecnte****       ****� n    ��� 2   �b
�b 
cwor� o    �a�a 0 notetext noteText�c  �f  �e  � m    �`�` � k    a�� ��� r    )   c    ' l   %�_�^ n    % 7    %�]
�] 
cobj 4     �\	
�\ 
cwor	 m    �[�[�� 4   ! $�Z

�Z 
cwor
 m   " #�Y�Y�� o    �X�X 0 notetext noteText�_  �^   m   % &�W
�W 
ctxt o      �V�V 0 
lastendstr 
lastEndStr�  r   * ; c   * 9 l  * 7�U�T n   * 7 7   + 7�S
�S 
cobj 4   / 2�R
�R 
cwor m   0 1�Q�Q�� 4   3 6�P
�P 
cwor m   4 5�O�O�� o   * +�N�N 0 notetext noteText�U  �T   m   7 8�M
�M 
ctxt o      �L�L 0 lastbeginstr lastBeginStr  l  < <�K�J�I�K  �J  �I   �H Z   < a�G F   < G =  < ? !  o   < =�F�F 0 
lastendstr 
lastEndStr! m   = >"" �##  T E n d =  B E$%$ o   B C�E�E 0 lastbeginstr lastBeginStr% m   C D&& �''  T B e g i n k   J [(( )*) l  J J�D+,�D  + !  the time string is existed   , �-- 6   t h e   t i m e   s t r i n g   i s   e x i s t e d* .�C. r   J [/0/ c   J Y121 l  J W3�B�A3 n   J W454 7   K W�@67
�@ 
cobj6 4   O R�?8
�? 
cwor8 m   P Q�>�> 7 4   S V�=9
�= 
cwor9 m   T U�<�<��5 o   J K�;�; 0 notetext noteText�B  �A  2 m   W X�:
�: 
ctxt0 o      �9�9 0 orinote oriNote�C  �G   k   ^ a:: ;<; l  ^ ^�8=>�8  = %  the time string is not existed   > �?? >   t h e   t i m e   s t r i n g   i s   n o t   e x i s t e d< @�7@ r   ^ aABA o   ^ _�6�6 0 notetext noteTextB o      �5�5 0 orinote oriNote�7  �H  � CDC =   d mEFE l  d kG�4�3G I  d k�2H�1
�2 .corecnte****       ****H n   d gIJI 2  e g�0
�0 
cworJ o   d e�/�/ 0 notetext noteText�1  �4  �3  F m   k l�.�. D K�-K k   p �LL MNM r   p �OPO c   p QRQ l  p }S�,�+S n   p }TUT 7   q }�*VW
�* 
cobjV 4   u x�)X
�) 
cworX m   v w�(�(��W 4   y |�'Y
�' 
cworY m   z {�&�&��U o   p q�%�% 0 notetext noteText�,  �+  R m   } ~�$
�$ 
ctxtP o      �#�# 0 
lastendstr 
lastEndStrN Z[Z r   � �\]\ c   � �^_^ l  � �`�"�!` n   � �aba 7   � �� cd
�  
cobjc 4   � ��e
� 
cwore m   � �����d 4   � ��f
� 
cworf m   � �����b o   � ��� 0 notetext noteText�"  �!  _ m   � ��
� 
ctxt] o      �� 0 lastbeginstr lastBeginStr[ ghg l  � �����  �  �  h iji Z   � �kl�mk F   � �non =  � �pqp o   � ��� 0 
lastendstr 
lastEndStrq m   � �rr �ss  T E n do =  � �tut o   � ��� 0 lastbeginstr lastBeginStru m   � �vv �ww  T B e g i nl k   � �xx yzy l  � ��{|�  { !  the time string is existed   | �}} 6   t h e   t i m e   s t r i n g   i s   e x i s t e dz ~�~ r   � �� m   � ��� ���  � o      �� 0 orinote oriNote�  �  m k   � ��� ��� l  � �����  � %  the time string is not existed   � ��� >   t h e   t i m e   s t r i n g   i s   n o t   e x i s t e d� ��� r   � ���� o   � ��� 0 notetext noteText� o      �� 0 orinote oriNote�  j ��� l  � ��
�	��
  �	  �  �  �-  � k   � ��� ��� l  � �����  � %  the time string is not existed   � ��� >   t h e   t i m e   s t r i n g   i s   n o t   e x i s t e d� ��� r   � ���� o   � ��� 0 notetext noteText� o      �� 0 orinote oriNote�  � ��� l  � �����  �  �  � �� � L   � ��� o   � ����� 0 orinote oriNote�   �p       ����� |�������������� �������  � ������������������������������ 20 includefullprojectpaths includeFullProjectPaths�� 0 notebookname notebookName�� (0 includetaskelapsed includeTaskElapsed�� (0 includetaskcontext includeTaskContext�� 40 includetaskestimatedtime includeTaskEstimatedTime�� ,0 includetaskstartdate includeTaskStartDate�� :0 includetaskmodificationdate includeTaskModificationDate�� 60 includetaskcompletiondate includeTaskCompletionDate�� $0 includetasknotes includeTaskNotes�� 0 thenotename theNoteName�� ,0 getprojectfolderpath getProjectFolderPath�� $0 appendtaskdetail appendTaskDetail�� .0 getoriginaltextofnote getOriginalTextOfNote
�� .aevtoappnull  �   � ****
�� boovtrue
�� boovtrue
�� boovfals
�� boovfals
�� boovtrue
�� boovfals
�� boovtrue
�� boovtrue� ��E���������� ,0 getprojectfolderpath getProjectFolderPath�� ����� �  ���� 0 
theproject 
theProject��  � �������� 0 
theproject 
theProject�� 0 thefolderpath theFolderPath�� 0 	thefolder 	theFolder� �O����hn��������
�� 
FCAr
�� .coredoexnull���     ****
�� 
pnam
�� 
ctnr
�� 
pcls�� d� `�E�O��,j  @��,E�O 4hZ�� 
�%E�Y hO��,�%E�O��,�,�  
��,E�Y [OY��Y hO��  �E�Y hO�U� ������������� $0 appendtaskdetail appendTaskDetail�� ����� �  ���������� 0 thetaskdetail theTaskDetail�� 0 thevalue theValue�� 0 	theprefix 	thePrefix�� 0 	thesuffix 	theSuffix��  � ���������� 0 thetaskdetail theTaskDetail�� 0 thevalue theValue�� 0 	theprefix 	thePrefix�� 0 	thesuffix 	theSuffix� ���������
�� 
msng
�� 
bool�� 3�� 
��%E�Y hO�� 
 �� �& �E�Y ��%E�O��%�%�%� ������������� .0 getoriginaltextofnote getOriginalTextOfNote�� ����� �  ���� 0 noteall noteAll��  � �������������� 0 noteall noteAll�� 0 notetext noteText�� 0 orinote oriNote�� 0 
newtimestr 
newTimeStr�� 0 
lastendstr 
lastEndStr�� 0 lastbeginstr lastBeginStr� �������������"&����rv�
�� 
cwor
�� .corecnte****       ****�� 
�� 
cobj
�� 
ctxt����
�� 
bool������ ��E�O�E�O�E�O��-j � N�[�\[�i/\�i/2�&E�O�[�\[��/\��/2�&E�O�� 	 �� �& �[�\[�k/\��/2�&E�Y �E�Y Q��-j �  B�[�\[�i/\�i/2�&E�O�[�\[��/\��/2�&E�O�� 	 �� �& �E�Y �E�OPY �E�O�� �����������
�� .aevtoappnull  �   � ****� k    j��  ���  ���  ���  ���  ���  ���  ��� �� �� �� o�� ��� ��� ��� ��� �� %����  ��  ��  � ����
�� 
OSav
�� 
OSbv� ��� � � � � � ����� ��� ��� �����������������������'-����5��OW������������������ ��ch��������������������������������-��1��3����\m����������~�}�|�{�z���y�x�w�v�u�t�s�r�q�p�o�n!&�m�lIL�kVdg�j�i�����h�g�����f�e�d�cDGV`br�b�a�`�_�^�]����\�������[�Z:�Y�X�W�V�U�T�S
�� .miscactvnull��� ��� null�� 
�� 
inSL
�� 
prmp
�� 
appr
�� .gtqpchltns    @   @ ns  ��  0 thereportscope theReportScope
�� 
cobj
�� .misccurdldt    ��� null�� 0 thestartdate theStartDate
�� 
hour
�� 
min 
�� 
scnd�� �� ;�� 0 
theenddate 
theEndDate
�� 
dstr�� 0 thedaterange theDateRange
�� 
days
�� 
wkdy
�� 
sun 
�� 
sat �� 
�� 
day 
�� 
mnth
�� 
year�� &0 theprogressdetail theProgressDetail�� .0 modifiedtasksdetected modifiedTasksDetected
�� 
docu
�� 
FCfx�  
�� 
FCDm�� *0 themodifiedprojects theModifiedProjects
�� 
leng�� &0 thecurrentproject theCurrentProject
�� 
FCft
�� 
FCcd
�� 
FC#t�� &0 thecompletedtasks theCompletedTasks�� ,0 theprojectfolderpath theProjectFolderPath�� ,0 getprojectfolderpath getProjectFolderPath
�� 
pnam
�� 
ret �� $0 totalelapsedtime totalElapsedTime��  0 thecurrenttask theCurrentTask�� 0 thetaskdetail theTaskDetail
�� 
FCno�� 0 notetext noteText
�� 
cwor
� .corecnte****       ****�~ 
�} 
ctxt�| 0 
lastendstr 
lastEndStr�{���z 0 lastbeginstr lastBeginStr
�y 
bool�x 0 timestr timeStr�w��
�v 
nmbr�u 0 elapsedtime elapsedTime�t *0 totalminuteselapsed totalMinutesElapsed
�s 
TEXT�r  0 elapsedtimestr elapsedTimeStr
�q 
FCEM�p $0 estimatedminutes estimatedMinutes�o 0 estimatedtime estimatedTime
�n 
msng�m 0 
elapsedstr 
elapsedStr�l 0 	totaltime 	totalTime�k $0 appendtaskdetail appendTaskDetail
�j 
FCct�i 0 
thecontext 
theContext
�h 
FCDs�g 0 	startdate 	startDate
�f 
FCdc�e 0 noteall noteAll�d .0 getoriginaltextofnote getOriginalTextOfNote�c 0 noteori noteOri�b <�a 00 totalelapsedtimesecond totalElapsedTimeSecond�` 0 dayselapsed daysElapsed�_ 0 hourselapsed hoursElapsed�^  0 minuteselapsed minutesElapsed�] 0 secondsremain  �\ *0 titalelapsedtimestr titalElapsedTimeStr
�[ 
mesS
�Z .sysodisAaleR        TEXT
�Y 
Ennb
�X 
Entt
�W 
Enhl
�V .EVRNcrntnull��� ��� null�U 0 thenote theNote
�T 
EV17
�S .EVRNonwnnull��� ��� null��k*j  O�������v��kv����� E�O�f  hY hO�a k/E�O*j E` Oj_ a ,FOj_ a ,FOj_ a ,FO_ a _  a _  a E` O�a   a _ a ,%E` YA�a   0_ k_  E` O_ k_  E` Oa _ a ,%E` Y�a    f !h_ a !,a " _ k_  E` [OY��O !h_ a !,a # _ k_  E` [OY��Oa $_ a ,%a %%_ a ,%E` Y��a &  �_ a '_  E` O_ a '_  E` O !h_ a !,a " _ k_  E` [OY��O !h_ a !,a # _ k_  E` [OY��Oa (_ a ,%a )%_ a ,%E` Y�a *  v h_ a +,k _ k_  E` [OY��O %h_ a ,,_ a ,,_ k_  E` [OY��O_ k_  E` Oa -_ a ,%a .%_ a ,%E` Y ��a /  � 'h_ a 0,*j a 0,_ k_  E` [OY��O_ k_  E` O 'h_ a 0,*j a 0,_ k_  E` [OY��O_ k_  E` Oa 1_ a ,%a 2%_ a ,%E` Y hO_ Ec  	Oa 3E` 4OfE` 5Oa 6*a 7k/
*a 8-a 9[[a :,\Z_ :\[a :,\Z_ <A1E` ;O�k_ ;a <,Ekh  _ ;a �E/E` =O_ =a >-a 9[[[[a ?,\Ze8\[a :,\Z_ :A\[a :,\Z_ <A\[a @,\Zj8A1E` AO_ AjvteE` 5Oa BE` COb   e  +)_ =k+ DE` CO_ Ca E _ Ca F%E` CY hY hO_ 4a G%_ C%_ =a H,%a I%_ J%a K%E` 4OjE` LO?k_ Aa <,Ekh _ Aa �E/E` MO_ 4a N%_ Ma H,%E` 4Oa OE` POb  e t_ Ma Q,E` RO_ Ra S-j Ta UR_ R[a \[a Si/\a Si/2a V&E` WO_ R[a \[a Sa X/\a Sa X/2a V&E` YO_ Wa Z 
 _ Ya [ a \& �_ R[a \[a Sa X/\a Si/2a V&E` ]O_ ][a \[a Sa ^/\a Sa ^/2a V&a _&E` `O_ `_ "E` aO_ aa b&E` cO_ Ma d,E` eO_ ea V&E` fO_ `a g P_ ca h%_ Ma d,%a V&a i%E` jO_ L_ aa _&E` kO_ kE` LO)_ P_ ja la ma U+ nE` PY %_ ca o%E` jO)_ P_ ja pa qa U+ nE` PY hY hY hOb  e  :_ Ma r,E` sO_ sa g  )_ P_ sa H,a ta ua U+ nE` PY hY hOb  e   )_ P_ Ma d,a va wa U+ nE` PY hO_ Ma x,E` yO_ ya g *b  e  )_ P_ ya za {a U+ nE` PY hY hOb  e   )_ P_ Ma :,a |a }a U+ nE` PY hOb  e   )_ P_ Ma ~,a a �a U+ nE` PY hO_ Ma Q,E` �O)_ �k+ �E` �O_ �j Tj *b  e  )_ P_ �a �a �a U+ nE` PY hY hO_ Pa � _ 4a �%_ P%a �%E` 4Y hO_ 4a �%_ J%E` 4[OY��O_ Lj �_ La � E` �O_ �_ "E` �O_ �_ #_ "E` �O_ �_ #_ "E` �O_ �_ "E` aO_ �_ #E` �O_ �a b&a �%_ �a b&%a �%_ �a b&%a �%E` �O_ 4a �%_ C%_ =a H,%a �%_ L%a �%_ �%a �%E` 4Y hO_ 4a �%_ J%E` 4OPY h[OY�/UUO_ 4a �%E` 4O_ 5f  a �a �a ��%a �%l �OhY hOa � 3*j  O*a �b  a �b  	a �_ 4� �E` �O*a �_ �l �Uascr  ��ޭ
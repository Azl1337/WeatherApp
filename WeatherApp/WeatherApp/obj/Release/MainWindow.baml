   M S B A M L   `   `   `  ���� E  AWeatherApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:WeatherApp
WeatherApp      WeatherApp.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:WeatherApp       � Title$  WeatherApp v1.0��$	��225��$	��350��$	��350��.��� $��5q� � RowDefinitions �� $��40 ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto �.+�� $��5�� � ColumnDefinitions �� $��1* ��� $��3* �.+��� $��AppKey :��$
��Left=��� -    ��Name$ 
TBoxAppKey��$�� ��$��1��$��20��$	��210��$��Center=�� $��0�� �� $��* ��� $��2* ��� $��1* �.+��� $��Город :��$��Center=�$��Center=��� -   $ TBoxLocation��$��1��$	��130��$��20���� -    ��Name$ BSearch��$��2��$��
Поиск��$��10q��� -    ��Name$ LInfo��$`��ZЗдесь представлена информация о погоде в городах��$��1��$��Center=�$��Center=�� $��2��.+���  �� Orientation$ 
Horizontal=�.+��� $��Температура:��$��Center=�$��Center=��� -   $ LTemp��$�� ��$��2 0 0 0q�$��Center=�$��Center=�� $��3��.+��� $ 
Horizontal=�.+��� $$��Описание погоды:��$��Center=�$��Center=��� -   $ LDescription��$�� ��$��2 0 0 0q�$��Center=�$��Center=�� $��4�� �� $
��113* ��� $
��217* �.+��� $ 
Horizontal=�$��2��.+��� $"��Скорость ветра:��$��Center=�$��Center=��� -   $ 
LWindSpeed��$�� ��$��2 0 0 0q�$��Center=�$��Center=�
import os
import subprocess as s

items = s.check_output('grep -ri "extends SocketRxMessage" .', shell=True).decode('utf-8').split('\n')
rx_messages = [msg.split('class ')[1].split(' extends')[0] + '()' for msg in items if 'extends' in msg]
imports = set(['''import '%s';''' % msg.split(':')[0][2:] for msg in items if '.dart' in msg])
with open('rx_messages.dart', 'w', encoding='utf-8') as f:
    f.write('''import 'package:flutter_persistent_socket/communication/socket_messages.dart';
''' + '\n'.join(imports) +'''
    
List<SocketRxMessage> rxMessages = [\n    ''' + ',\n    '.join(rx_messages) + '''
];''')

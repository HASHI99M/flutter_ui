class Message {
  User sender, receiver;
  String dateTime;
  String body;
  Message({this.sender, this.receiver, this.dateTime , this.body});
}

class User {
  String name;
  String phone;
  String avatar;

  User({this.name, this.phone, this.avatar});
}

class Conversion {
  List<User> users;
  List<Message> messages;

  Conversion({this.users, this.messages});
}

class ProviderMessage {
  static List<Conversion> getMessage() {
    User user1 =     User(name: 'Hashim' , phone: '972599542635' ,avatar: 'assets/images/bg.jpg');
    User user2 =   User(name: 'Fuad' , phone: '972597988361' ,avatar: 'assets/images/bg2.jpg');
    return [
      Conversion(
        users: [
          user1,
          user2
        ],
        messages: [
          Message(
            receiver: user1,
            sender: user2,
            dateTime: '20:43',
            body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
        ],
      ),
      Conversion(
        users: [
          user1,
          user2
        ],
        messages: [
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
        ],
      ),
      Conversion(
        users: [
          user1,
          user2
        ],
        messages: [
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
        ],
      ),
      Conversion(
        users: [
          user1,
          user2
        ],
        messages: [
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
        ],
      ),
      Conversion(
        users: [
          user1,
          user2
        ],
        messages: [
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
        ],
      ),
      Conversion(
        users: [
          user1,
          user2
        ],
        messages: [
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
          Message(
              receiver: user1,
              sender: user2,
              dateTime: '20:43',
              body: 'Hi Everyone'
          ),
        ],
      ),
    ];
  }
}

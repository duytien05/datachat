class Language {
  static bool isEnglish = true;

  static Map<String, String> en = {
    "login": "Login",
    "email": "Email",
    "password": "Password",
    "chat": "Chats",
    "send": "Send",
    "profile": "Profile",
    "settings": "Settings",
    "logout": "Logout",
    "group": "Group Info",
  };

  static Map<String, String> vi = {
    "login": "Đăng nhập",
    "email": "Email",
    "password": "Mật khẩu",
    "chat": "Tin nhắn",
    "send": "Gửi",
    "profile": "Hồ sơ",
    "settings": "Cài đặt",
    "logout": "Đăng xuất",
    "group": "Thông tin nhóm",
  };

  static String text(String key) {
    if (isEnglish) {
      return en[key] ?? key;
    } else {
      return vi[key] ?? key;
    }
  }
}

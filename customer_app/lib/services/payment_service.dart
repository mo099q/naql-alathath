class PaymentService {
  static Future<String> pay(double amount) async {
    // هذه نسخة تجريبية فقط
    print('Processing payment: \$${amount}');
    await Future.delayed(const Duration(seconds: 2));
    return 'success'; // ممكن يرجع 'failed' لاحقًا
  }
}

void _submitOrder() async {
  final price = 100; // مثال، استبدل بالحساب الحقيقي
  final paymentResult = await PaymentService.pay(price);
  if (paymentResult == 'success') {
    final response = await ApiService.createOrder(
      pickup: _pickup.text,
      dropoff: _dropoff.text,
      workers: int.tryParse(_workers.text) ?? 1,
      vehicle: vehicle,
    );
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Order Created: ID ${response['id']}')),
    );
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Payment Failed')),
    );
  }
}

import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({super.key});

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  final TextEditingController _orderController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Track Order',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        FxBox.h12,
        _orderSearchForm(),
        FxBox.h52,
        _orderSummary(),
      ],
    );
  }

  Widget _orderSearchForm() {
    return SizedBox(
      width: 500.0,
      child: Card(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                'Check Your Order Status',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(height: 0.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomTextField(
                controller: _orderController,
                hintText: 'Order Code',
              ),
            ),
            FxButton(
              height: 42.0,
              onPressed: () {},
              borderRadius: 4.0,
              color: ColorConst.black,
              text: 'Track Order',
            ),
            FxBox.h12,
          ],
        ),
      ),
    );
  }

  Widget _orderSummary() {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              'Order Summary',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(height: 0.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    _orderSummaryText('Order Code:', '20230313-12555252'),
                    _orderSummaryText('Customer:', 'Keval Gajera'),
                    _orderSummaryText('Email:', 'keval.gajera@sarvadhi.com'),
                    _orderSummaryText(
                        'Shipping address:', 'Surat, Adoni, India'),
                  ],
                ),
              ),
              FxBox.w64,
              Expanded(
                child: Column(
                  children: [
                    _orderSummaryText('Order date:', '13-03-2023 12:55 PM'),
                    _orderSummaryText('Total order amount:', '\$ 2,097'),
                    _orderSummaryText('Shipping method:', 'Flat shipping rate'),
                    _orderSummaryText('Payment method:', 'Cash on delivery'),
                    _orderSummaryText('Shipping address:', 'Delivery Status'),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _orderSummaryText(String title, String value) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(child: Text(value, textAlign: TextAlign.start)),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mainn/shared/theme.dart';

class MessageView extends StatelessWidget {
  final String image;
  final String sender;
  final String status;
  final String time;
  final String contain;

  const MessageView({Key? key,
  required this.image,
  required this.sender,
  required this.status,
  required this.time,
  required this.contain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: whiteColor,
            boxShadow: [      
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 6,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        width: 48,
                        height: 48,
                        image
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            sender,
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            status,
                            style: greyTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    time.toUpperCase(),
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                contain,
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}

class notificationView extends StatelessWidget {
  final bool isTransaction;
  final String contain;
  final String time;

  const notificationView({Key? key,
  required this.isTransaction,
  required this.contain,
  required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: whiteColor,
            boxShadow: [      
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 6,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isTransaction? longTimeColor : nextColor 
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: isTransaction? 
                    Image.asset(
                      'assets/bank_card.png',
                      width: 20,
                      height: 17,
                    ) : 
                    Image.asset(
                      'assets/chat.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    contain,
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_filled_sharp,
                        color: greyColor,
                        size: 11,
                      ),
                      const SizedBox(
                        width: 4.5,
                      ),
                      Text(
                        time,
                        style: greyTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
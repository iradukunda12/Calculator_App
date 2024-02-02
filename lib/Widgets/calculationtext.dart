// import 'package:calculate/provider/calculator_provider.dart';
// import 'package:calculate/utils/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';

// class CalculationText extends ConsumerWidget {
//   const CalculationText({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final CalculationNotifier = ref.watch(calculationProvider);

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         FittedBox(
//           fit: BoxFit.fitWidth,
//           child: Text(
//             CalculationNotifier.prevData,
//             style: TextStyle(
//               fontSize: 32,
//               color: kSecondaryColor.withOpacity(0.7),
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         const SizedBox(
//           height: 12,
//         ),
//         FittedBox(
//           fit: BoxFit.fitWidth,
//           child: Text(
//             CalculationNotifier.data,
//             style: TextStyle(
//               fontSize: 40,
//               color: kSecondaryColor.withOpacity(1),
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:calculate/provider/calculator_provider.dart';
import 'package:calculate/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalculationText extends ConsumerWidget {
  const CalculationText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calculationNotifier = ref.watch(calculationProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            calculationNotifier.prevData,
            style: TextStyle(
              fontSize: 32,
              color: kSecondaryColor.withOpacity(0.7),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 12),
        FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            calculationNotifier.data,
            style: const TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

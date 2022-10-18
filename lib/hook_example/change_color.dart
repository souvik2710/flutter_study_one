import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../api_riverpod_example/view_model.dart';
class TypeOne extends StatefulWidget {

  @override
  State<TypeOne> createState() => _TypeOneState();
}

class _TypeOneState extends State<TypeOne> {
  bool isRedTypeOne=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:Center(
          child:ElevatedButton(
            style:ElevatedButton.styleFrom(primary: isRedTypeOne==true?Colors.red:Colors.green),
            child:Text(" Type One "),
            onPressed: (){
              setState(() {
                isRedTypeOne =  !isRedTypeOne;
              });
            },
          )
        )
      )
    );
  }
}
class TypeTwo extends HookConsumerWidget {
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final bool  myIsRedTypeTwo=ref.watch(viewModelExampleProvider).isRedTypeTwo;
    return Scaffold(
        body:SafeArea(
            child:Center(
                child:ElevatedButton(
                  style:ElevatedButton.styleFrom(primary: myIsRedTypeTwo==true?Colors.red:Colors.green),
                  child:Text("Type Two "),
                  onPressed: (){
                    ref.read(viewModelExampleProvider).colorChange();

                  },
                )
            )
        )
    );
  }
}
class TypeThree extends HookConsumerWidget {
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final ValueNotifier<bool> isRedTypeThree = useState(true);
    return Scaffold(
        body:SafeArea(
            child:Center(
                child:ElevatedButton(
                  style:ElevatedButton.styleFrom(primary: isRedTypeThree.value==true?Colors.red:Colors.green),
                  child:Text("Type Three "),
                  onPressed: (){
                    isRedTypeThree.value = !isRedTypeThree.value;
                  },
                )
            )
        )
    );
  }
}

final StateProvider<bool> isRedTypeFour= StateProvider<bool>((ref) => true);
class TypeFour extends HookConsumerWidget {
  const TypeFour({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context,WidgetRef ref) {

    return Scaffold(
        body:SafeArea(
            child:Center(
                child:ElevatedButton(
                  style:ElevatedButton.styleFrom(primary: ref.watch(isRedTypeFour.state).state?Colors.red:Colors.green),

                  child:Text("Type Four "),
                  onPressed: (){
                    ref.read(isRedTypeFour.state).state = !ref.read(isRedTypeFour.state).state;
                  },
                )
            )
        )
    );
  }
}
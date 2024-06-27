

import 'package:flutter/material.dart';

@immutable

abstract class IntroLastScreenEvent{

}
class OnLastScreenEvent extends IntroLastScreenEvent{
  OnLastScreenEvent({required this.index});
int index=0;
}

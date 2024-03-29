import 'dart:async';

import 'package:tutorial_app/presentation/base/base_viewmodel.dart';

import '../../domain/model.dart';
import '../resources/assets_manager.dart';
import '../resources/strings_manager.dart';

class OnBoardingViewModel extends BaseViewModel with OnBoardingViewModelInputs, OnBoardingViewModelOutputs{

  StreamController _streamController = StreamController<SliderViewObject>();

  late final List<SliderObject> _list;
  int _currentIndex = 0;

  //inputs
  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    _list = _getSliderObject();
    // send slider data to view
    _postDataToView();
    }

  @override
  int goNext() {
    int nextIndex = _currentIndex++;
    if (nextIndex >= _list.length) {
      _currentIndex = 0;
    }
    return _currentIndex;
  }

  @override
  int goPrevious() {
    int previousIndex = _currentIndex--;
    if (previousIndex == -1) {
      _currentIndex = _list.length - 1;
    }
    return _currentIndex;
  }

  @override
  void onPageChanged(int index) {
    _currentIndex = index;
    _postDataToView();

  }

  @override
  Sink get inputSliderViewObject => _streamController.sink;

  //outputs
  @override
  Stream<SliderViewObject> get outputSliderViewObject => _streamController.stream.map((sliderViewObject) => sliderViewObject);

  //private functions
  List<SliderObject> _getSliderObject() {
    return [
      SliderObject(AppStrings.onBoardingTitle1, AppStrings.onBoardingSubTitle1,
          ImageAssets.onBoardingLogo1),
      SliderObject(AppStrings.onBoardingTitle2, AppStrings.onBoardingSubTitle2,
          ImageAssets.onBoardingLogo2),
      SliderObject(AppStrings.onBoardingTitle3, AppStrings.onBoardingSubTitle3,
          ImageAssets.onBoardingLogo3),
      SliderObject(AppStrings.onBoardingTitle4, AppStrings.onBoardingSubTitle4,
          ImageAssets.onBoardingLogo4),
    ];
  }

  _postDataToView(){
    inputSliderViewObject.add(SliderViewObject(_list[_currentIndex], _list.length, _currentIndex));
  }


}
// orders that our view model will receive
abstract class OnBoardingViewModelInputs{
  void goNext();
  void goPrevious();
  void onPageChanged(int index);

  Sink get inputSliderViewObject; // this is the way to add data to the stream .. stream input
}
//data or results that would be sent to our view model
abstract class OnBoardingViewModelOutputs{
  Stream<SliderViewObject> get outputSliderViewObject;
}

class SliderViewObject{
  SliderObject sliderObject;
  int numOfSlides;
  int currentIndex;

  SliderViewObject(this.sliderObject, this.numOfSlides, this.currentIndex);
}
abstract class BaseViewModel extends BaseViewModelInputs with BaseViewModelOutputs{
// share variables and functions that will be used through any view model
}

abstract class BaseViewModelInputs{
  void start(); //will be called on init. of a view model
  void dispose(); // will be called when view model dies
}

abstract class BaseViewModelOutputs{
  void start(); //will be called on init. of a view model
  void dispose(); // will be called when view model dies
}
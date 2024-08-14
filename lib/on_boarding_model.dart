class OnBoardingModel {
  final String lottieURL;
  final String title;
  final String subtitle;

  OnBoardingModel(this.lottieURL, this.title, this.subtitle);
}

List<OnBoardingModel> onboardintItems = [
  OnBoardingModel(

      'https://lottie.host/b6628bd6-c9f8-47e8-868e-1cbf800bd0b1/8UoXOfR4dJ.json',
      'Welcome to OAUBIKES',
       'A Beacon of Innovation and Connectivity'
       ),
  OnBoardingModel(
      'https://lottie.host/c0de7b30-85d4-4818-ac9b-d8c2144d3301/KMEUK1f7kB.json',
      'GREAT IFE',
      'Effortlessly guiding you to your destination.'),
  OnBoardingModel(
      'https://lottie.host/7790b94f-08b9-441a-8f3c-cdaa9b7c984d/GuXfbZcpfy.json',
      'Enjoy the Ride',
      'The ultimate destination for every rider\s journey.'),
];
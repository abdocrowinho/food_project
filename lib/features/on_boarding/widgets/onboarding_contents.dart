class OnBoardingContents {
  final String image;
  final String tittle;
  final String desc;

  OnBoardingContents(
      {required this.image, required this.tittle, required this.desc});
}

List<OnBoardingContents> onBoradingDisplay = [
  OnBoardingContents(
      image: 'assets/onboarding1.png',
      tittle: 'Welcom',
      desc:
          'Welcome to the food application. We hope you find what pleases you'),
  OnBoardingContents(
      image: 'assets/onboarding2.png',
      tittle: 'Quick & Fast Delivery',
      desc:
          'You can place an order for any item in the application and it will be delivered to you sooner than you can imagine'),
  OnBoardingContents(
      image: 'assets/onboarding3.png',
      tittle: 'Fresh vegatables & meate ',
      desc:
          'Our stores always have fresh meat and vegetables, all you have to do is ask for them')
];

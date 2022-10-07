import 'package:get/get_navigation/src/routes/get_route.dart';

import '../Pages/Details/binding/details_binding.dart';
import '../Pages/Details/view/details_view.dart';
import '../Pages/Home/binding/home_binding.dart';
import '../Pages/Home/view/home_view.dart';

final Routes = [
  GetPage(name: "/home", page: () => HomeView(), binding: HomeBinding()),
  GetPage(name: "/details", page: () => DetailsView(), binding: DetailsBinding()),
];
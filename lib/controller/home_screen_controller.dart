import 'package:get/get.dart';
import 'package:techblog/component/api_constant.dart';
import 'package:techblog/models/article_model.dart';
import 'package:techblog/models/podcast_model.dart';
import 'package:techblog/services/dio_service.dart';

class HomeScreenController extends GetxController {
  RxList tagsList = RxList();
  RxList<ArticleModel> topVisitedList = RxList();
  RxList<PodcastModel> topPodcasts = RxList();

  getHomeItems() async {
    var response = await DioService().getMethod(ApiConstant.getHomeItem);

    @override
    onInit(){
      super.onInit();
      getHomeItems();
    }

    if (response.statusCode == 200) {
      response.data['top_visited'].forEach((element) {
        topVisitedList.add(
          ArticleModel.fromJson(element),
        );
      });
      response.data['top_podcasts'].forEach((element) {
        topPodcasts.add(
          PodcastModel.fromJson(element),
        );
      });
    }
  }
}

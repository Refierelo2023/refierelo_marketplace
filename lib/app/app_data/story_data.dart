import '../models/story_model.dart';
import '../models/user_model.dart';

User user = const User(
  name: 'Sin uso',
  profileImageUrl:
      'http://m.gettywallpapers.com/wp-content/uploads/2021/03/Cool-HD-Wallpaper.jpg',
);

List<Story> stories = [
  Story(
    url: 'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_1280.jpg',
    media: MediaType.image,
    user: user,
    duration: const Duration(seconds: 5),
  ),
  Story(
    url: 'assets/video/story_feed/v1.mp4',
    media: MediaType.video,
    user: user,
    duration: const Duration(seconds: 5),
  ),
  
];

void initializeStories() {
  stories.removeWhere((story) =>
      story.url ==
      'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_1280.jpg');
}

void updateStories(String imageUrl) {
  if (imageUrl.isNotEmpty) {
    if (imageUrl.startsWith("file://")) {
      imageUrl = Uri.file(imageUrl).toString();
    }
    stories.add(
      Story(
        url: imageUrl,
        media: MediaType.image,
        user: user,
        duration: const Duration(seconds: 5),
      ),
    );
  }
}

List<UserStoryList> storyListUser = [
  UserStoryList(
      user: const User(
        name: 'Cine Colombia',
        profileImageUrl:
            'https://secreditos.org.co/wp-content/uploads/309-3098892_algunos-de-nuestros-clientes-cine-colombia-logo-vector-1-e1646843331371.png',
      ),
      story: stories),
  UserStoryList(
      user: const User(
        name: 'Bodytech',
        profileImageUrl:
            'https://secreditos.org.co/wp-content/uploads/Logo-Bodytech-2021-01.png',
      ),
      story: stories),
  UserStoryList(
      user: const User(
        name: 'Kfc',
        profileImageUrl: 'https://www.svgrepo.com/show/303451/kfc-2-logo.svg',
      ),
      story: stories),
  UserStoryList(
      user: const User(
        name: 'Negocio 4',
        profileImageUrl:
            'http://m.gettywallpapers.com/wp-content/uploads/2021/03/Cool-HD-Wallpaper.jpg',
      ),
      story: stories),
  UserStoryList(
      user: const User(
        name: 'Negocio 5',
        profileImageUrl:
            'http://m.gettywallpapers.com/wp-content/uploads/2021/03/Cool-HD-Wallpaper.jpg',
      ),
      story: stories),
  UserStoryList(
      user: const User(
        name: 'Negocio 6',
        profileImageUrl:
            'http://m.gettywallpapers.com/wp-content/uploads/2021/03/Cool-HD-Wallpaper.jpg',
      ),
      story: stories),
  UserStoryList(
      user: const User(
        name: 'Emprendedor 7',
        profileImageUrl:
            'http://m.gettywallpapers.com/wp-content/uploads/2021/03/Cool-HD-Wallpaper.jpg',
      ),
      story: stories),
];

class UserStoryList {
  List<Story> story;
  User user;

  UserStoryList({required this.story, required this.user});
}

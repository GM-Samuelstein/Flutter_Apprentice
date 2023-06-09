import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:fooderlich_v2/models/models.dart';

// Mock recipe service that grabs sample json data to mock recipe
// request/response.
class MockFooderlichService {
  // Batch request that gets both today recipes and friend's feed.
  Future<ExploreData> getExploreData() async {
    final todayRecipes = await _getTodayRecipes();
    final friendPosts = await _getFriendFeed();

    return ExploreData(todayRecipes, friendPosts);
  }

  // Get sample explore recipes json to display in UI.
  Future<List<ExploreRecipe>> _getTodayRecipes() async {
    // Simulate API request wait time.
    await Future.delayed(const Duration(milliseconds: 300));
    // Load json from file system.
    final jsonString =
      await _loadAsset('assets/sample_data/sample_explore_recipes.json');
    // Decode to json
    final Map<String, dynamic> json = jsonDecode(jsonString);

    // Go through each recipe and convert json to ExploreRecipe object.
    if (json['recipes'] != null) {
      final recipes = <ExploreRecipe>[];
      json['recipes'].forEach((value) {
        recipes.add(ExploreRecipe.fromJson(value));
      });
      return recipes;
    } else {
      return [];
    }
  }

  // Get the sample friend json posts to display in UI.
  Future<List<Post>> _getFriendFeed() async {
    // Simulate API request wait time.
    await Future.delayed(const Duration(milliseconds: 300));
    // Load json from file system.
    final jsonString =
        await _loadAsset('assets/sample_data/sample_friends_feed.json');
    // Decode to json.
    final Map<String, dynamic> json = jsonDecode(jsonString);

    // Go through each post and convert json to Post object.
    if (json['feed'] != null) {
      final posts = <Post>[];
      json['feed'].forEach((value) {
        posts.add(Post.fromJson(value));
      });
      return posts;
    } else {
      return [];
    }
  }

  // Get the sample recipe json to display in UI.
  Future<List<SimpleRecipe>> getRecipes() async {
    // Simulate API request wait time.
    await Future.delayed(const Duration(milliseconds: 300));
    // Load json from file system.
    final jsonString =
        await _loadAsset('assets/sample_data/sample_recipes.json');
    // Decode to json
    final Map<String, dynamic> json = jsonDecode(jsonString);

    // Go through each recipe and convert to SimpleRecipe object.
    if (json['recipes'] != null) {
      final recipes = <SimpleRecipe>[];
      json['recipes'].forEach((value) {
        recipes.add(SimpleRecipe.fromJson(value));
      });
      return recipes;
    } else {
      return [];
    }
  }

  // Loads sample json data from file system.
  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}

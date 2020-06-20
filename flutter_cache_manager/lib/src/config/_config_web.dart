import 'package:flutter_cache_manager/src/storage/cache_info_repositories/cache_info_repository.dart';
import 'package:flutter_cache_manager/src/storage/cache_info_repositories/non_storing_object_provider.dart';
import 'package:flutter_cache_manager/src/storage/file_system/file_system.dart';
import 'package:flutter_cache_manager/src/storage/file_system/file_system_web.dart';

import 'config.dart' as def;

class Config implements def.Config {
  Config(this.cacheKey, {
    Duration maxAgeCacheObject,
    int maxNrOfCacheObjects,
    CacheInfoRepository repo,
    FileSystem fileSystem,
  })  :
        maxAgeCacheObject = maxAgeCacheObject ?? const Duration(days: 30),
        maxNrOfCacheObjects = maxNrOfCacheObjects ?? 200,
        repo = repo ?? NonStoringObjectProvider(),
        fileSystem = fileSystem ?? WebFileSystem();

  @override
  final CacheInfoRepository repo;

  @override
  final FileSystem fileSystem;

  @override
  final String cacheKey;

  @override
  final Duration maxAgeCacheObject;

  @override
  final int maxNrOfCacheObjects;
}

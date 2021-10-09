# GradleBuildTrackerConfigCache

Sample project to reproduce issues between the Gradle [build-time-tracker](https://github.com/asarkar/build-time-tracker) plugin and the [Gradle configuration cache](https://docs.gradle.org/current/userguide/configuration_cache.html)

* `./go.sh plain`: run without configuration cache
* `./go.sh configcache`: run with configuration cache enabled. This currently fails as the plugin is currently incompatible with the configuration cache


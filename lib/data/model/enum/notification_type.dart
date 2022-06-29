enum NotificationType {
  videoMatting,
  mergedVideo,
  typeComment,
  follower,
  likedVideo,
}

const _notificationTypeEnumMap = {
  NotificationType.videoMatting: "1",
  NotificationType.mergedVideo: "2",
  NotificationType.typeComment: "3",
  NotificationType.follower: "4",
  NotificationType.likedVideo: "5",
};

/// enum -> String extension

extension NotificationTypeString on NotificationType {
  String asString() => _notificationTypeEnumMap[this] ?? "1";
}

/// number -> enum function

NotificationType parseNotificationType(String value) {
  switch (value) {
    case "1":
      return NotificationType.videoMatting;
    case "2":
      return NotificationType.mergedVideo;
    case "3":
      return NotificationType.typeComment;
    case "4":
      return NotificationType.follower;
    case "5":
      return NotificationType.likedVideo;
    default:
      return NotificationType.videoMatting;
  }
}

/// parse enum -> display string extension

const _notificationTypeEnumMapDisPlayName = {
  NotificationType.videoMatting: "抜き出",
  NotificationType.mergedVideo: "動画マージ",
  NotificationType.typeComment: "コメント",
  NotificationType.follower: "フォロワー",
  NotificationType.likedVideo: "",
};

extension NotificationTypeDisplay on NotificationType {
  String asDisplay() => _notificationTypeEnumMapDisPlayName[this] ?? "抜き出";
}

/// convert Notification Display String -> Notification type enum

NotificationType convertNotificationDisplayToEnum(String value) {
  switch (value) {
    case "抜き出":
      return NotificationType.videoMatting;
    case "動画マージ":
      return NotificationType.mergedVideo;
    case "コメント":
      return NotificationType.typeComment;
    case "フォロワー":
      return NotificationType.follower;
    default:
      return NotificationType.videoMatting;
  }
}

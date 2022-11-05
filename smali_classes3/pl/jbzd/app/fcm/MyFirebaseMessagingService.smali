.class public Lpl/jbzd/app/fcm/MyFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "MyFirebaseMessagingService.java"


# static fields
.field public static final PUSH_NOTIFICATION:Ljava/lang/String; = "pushNotification"


# instance fields
.field private notificationUtils:Lpl/jbzd/core/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method private handleDataMessage(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 75
    const/4 v0, -0x1

    .line 77
    if-eqz p2, :cond_0

    :try_start_0
    const-string v1, "media_id"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "media_id"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    const-string v0, "media_id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 81
    :cond_0
    if-lez v0, :cond_2

    .line 83
    invoke-static {p0}, Lpl/jbzd/api/ApiClient;->init(Landroid/content/Context;)Lpl/jbzd/api/ApiClient;

    .line 84
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lpl/jbzd/api/ApiService;->media_index(I)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/api/response/BaseMediaResponse;

    .line 86
    if-eqz v0, :cond_1

    iget-object v1, v0, Lpl/jbzd/api/response/BaseMediaResponse;->media:Lpl/jbzd/app/model/BaseMedia;

    if-eqz v1, :cond_1

    .line 87
    iget-object v0, v0, Lpl/jbzd/api/response/BaseMediaResponse;->media:Lpl/jbzd/app/model/BaseMedia;

    invoke-static {v0}, Lpl/jbzd/app/model/Media;->fromBaseMedia(Lpl/jbzd/app/model/BaseMedia;)Lpl/jbzd/app/model/Media;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lpl/jbzd/app/fcm/MyFirebaseMessagingService;->showNotification(Ljava/lang/String;Lpl/jbzd/app/model/Media;)V

    .line 103
    :goto_0
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lpl/jbzd/app/fcm/MyFirebaseMessagingService;->showNotification(Ljava/lang/String;Lpl/jbzd/app/model/Media;)V

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0

    .line 94
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lpl/jbzd/app/fcm/MyFirebaseMessagingService;->showNotification(Ljava/lang/String;Lpl/jbzd/app/model/Media;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private handleNotification(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lpl/jbzd/app/fcm/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/core/a/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "pushNotification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-static {p0}, Landroid/support/v4/content/l;->a(Landroid/content/Context;)Landroid/support/v4/content/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/l;->a(Landroid/content/Intent;)Z

    .line 66
    new-instance v0, Lpl/jbzd/core/a/d;

    invoke-virtual {p0}, Lpl/jbzd/app/fcm/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lpl/jbzd/core/a/d;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v0}, Lpl/jbzd/core/a/d;->a()V

    .line 69
    :cond_0
    return-void
.end method

.method private showNotification(Ljava/lang/String;Lpl/jbzd/app/model/Media;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0}, Lpl/jbzd/app/fcm/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lpl/jbzd/core/a/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "pushNotification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-static {p0}, Landroid/support/v4/content/l;->a(Landroid/content/Context;)Landroid/support/v4/content/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/l;->a(Landroid/content/Intent;)Z

    .line 135
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Lpl/jbzd/app/fcm/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/view/main/MainActivity;

    invoke-direct {v5, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    :try_start_0
    const-string v2, "ARG_MEDIA"

    if-eqz p2, :cond_1

    move-object v1, p2

    :goto_1
    invoke-virtual {v5, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lpl/jbzd/app/model/Media;->realmGet$image()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 129
    invoke-virtual {p0}, Lpl/jbzd/app/fcm/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lpl/jbzd/app/model/Media;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lpl/jbzd/app/model/Media;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lpl/jbzd/app/model/Media;->realmGet$title()Ljava/lang/String;

    move-result-object v3

    :goto_3
    const-string v4, ""

    invoke-virtual {p2}, Lpl/jbzd/app/model/Media;->realmGet$image()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lpl/jbzd/app/fcm/MyFirebaseMessagingService;->showNotificationMessageWithBigImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 124
    goto :goto_1

    .line 126
    :catch_0
    move-exception v1

    move-object p2, v0

    goto :goto_2

    .line 129
    :cond_2
    const-string v3, ""

    goto :goto_3

    .line 132
    :cond_3
    invoke-virtual {p0}, Lpl/jbzd/app/fcm/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, ""

    const-string v4, ""

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lpl/jbzd/app/fcm/MyFirebaseMessagingService;->showNotificationMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showNotificationMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lpl/jbzd/core/a/d;

    invoke-direct {v0, p1}, Lpl/jbzd/core/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpl/jbzd/app/fcm/MyFirebaseMessagingService;->notificationUtils:Lpl/jbzd/core/a/d;

    .line 139
    const v0, 0x30008000

    invoke-virtual {p5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    iget-object v0, p0, Lpl/jbzd/app/fcm/MyFirebaseMessagingService;->notificationUtils:Lpl/jbzd/core/a/d;

    invoke-virtual {v0, p2, p3, p4, p5}, Lpl/jbzd/core/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method private showNotificationMessageWithBigImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 144
    new-instance v0, Lpl/jbzd/core/a/d;

    invoke-direct {v0, p1}, Lpl/jbzd/core/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpl/jbzd/app/fcm/MyFirebaseMessagingService;->notificationUtils:Lpl/jbzd/core/a/d;

    .line 145
    const v0, 0x30008000

    invoke-virtual {p5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lpl/jbzd/app/fcm/MyFirebaseMessagingService;->notificationUtils:Lpl/jbzd/core/a/d;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lpl/jbzd/core/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 147
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 29
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lpl/jbzd/app/fcm/MyFirebaseMessagingService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpl/jbzd/app/fcm/MyFirebaseMessagingService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NOTIFICATIONS_ON"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 37
    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "message"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "message"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 38
    :goto_1
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->a()Ljava/util/Map;

    move-result-object v0

    const-string v3, "custom"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->a()Ljava/util/Map;

    move-result-object v0

    const-string v3, "custom"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 41
    :cond_3
    const-string v0, "Sprawd\u017a nowe Kwejki!"

    .line 44
    :goto_2
    invoke-direct {p0, v0, v2}, Lpl/jbzd/app/fcm/MyFirebaseMessagingService;->handleDataMessage(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    move-object v1, v2

    .line 37
    goto :goto_1

    .line 53
    :cond_5
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->b()Lcom/google/firebase/messaging/RemoteMessage$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->b()Lcom/google/firebase/messaging/RemoteMessage$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/jbzd/app/fcm/MyFirebaseMessagingService;->handleNotification(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

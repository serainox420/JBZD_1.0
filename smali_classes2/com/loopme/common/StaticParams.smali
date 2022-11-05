.class public Lcom/loopme/common/StaticParams;
.super Ljava/lang/Object;
.source "StaticParams.java"


# static fields
.field public static final APPKEY_TAG:Ljava/lang/String; = "appkey"

.field public static final BANNER_TAG:Ljava/lang/String; = "banner"

.field public static BASE_URL:Ljava/lang/String; = null

.field public static CACHED_VIDEO_LIFE_TIME:J = 0x0L

.field public static final CLICK_INTENT:Ljava/lang/String; = "com.loopme.CLICK_INTENT"

.field public static DEBUG_MODE:Z = false

.field public static final DEFAULT_EXPIRED_TIME:I = 0x927c0

.field public static final DESTROY_INTENT:Ljava/lang/String; = "com.loopme.DESTROY_INTENT"

.field public static final FETCH_TIMEOUT:J = 0x2bf20L

.field public static final FORMAT_TAG:Ljava/lang/String; = "format"

.field public static final INTERSTITIAL_TAG:Ljava/lang/String; = "interstitial"

.field public static final LOOPME_PREFERENCES:Ljava/lang/String; = "loopme"

.field public static final ORIENTATION_LAND:Ljava/lang/String; = "landscape"

.field public static final ORIENTATION_PORT:Ljava/lang/String; = "portrait"

.field public static PART_PRELOAD:Z = false

.field public static final SDK_VERSION:Ljava/lang/String; = "5.1.1"

.field public static final SHRINK_MODE_KEEP_AFTER_FINISH_TIME:I = 0x3e8

.field public static final USE_MOBILE_NETWORK_FOR_CACHING:Z = true

.field public static final VIEWER_TOKEN:Ljava/lang/String; = "viewer_token"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    const-string v0, "loopme.me/api/loopme/ads/v3"

    sput-object v0, Lcom/loopme/common/StaticParams;->BASE_URL:Ljava/lang/String;

    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/loopme/common/StaticParams;->DEBUG_MODE:Z

    .line 22
    const-wide/32 v0, 0x6ddd000

    sput-wide v0, Lcom/loopme/common/StaticParams;->CACHED_VIDEO_LIFE_TIME:J

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/loopme/common/StaticParams;->PART_PRELOAD:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

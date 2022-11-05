.class public Lcom/millennialmedia/internal/utils/EnvironmentUtils;
.super Ljava/lang/Object;
.source "EnvironmentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;
    }
.end annotation


# static fields
.field public static final ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final ORIENTATION_PORTRAIT:Ljava/lang/String; = "portrait"

.field private static final a:Ljava/lang/String;

.field private static b:Landroid/app/Application;

.field private static c:Landroid/content/Context;

.field private static d:Ljava/lang/String;

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Z

.field private static l:Z

.field private static m:Z

.field private static n:Ljava/lang/Integer;

.field private static o:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 639
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    .line 642
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic a(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 68
    sput-object p0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->n:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static areHeadphonesPluggedIn()Z
    .locals 2

    .prologue
    .line 1046
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1048
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method static synthetic b()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->n:Ljava/lang/Integer;

    return-object v0
.end method

.method private static c()V
    .locals 3

    .prologue
    .line 153
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->b:Landroid/app/Application;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 154
    new-instance v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils$2;

    invoke-direct {v1}, Lcom/millennialmedia/internal/utils/EnvironmentUtils$2;-><init>()V

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 172
    return-void
.end method

.method private static d()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-gt v0, v3, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 182
    invoke-static {v0, v3}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->f:Z

    .line 185
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 186
    invoke-static {v0, v3}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->e:Z

    .line 189
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    .line 190
    invoke-static {v0, v3}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->g:Z

    .line 193
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_CALENDAR"

    .line 194
    invoke-static {v0, v3}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->i:Z

    .line 197
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 198
    invoke-static {v0, v3}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->h:Z

    .line 201
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    invoke-static {v0, v3}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->j:Z

    .line 204
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    .line 205
    invoke-static {v0, v3}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    :goto_6
    sput-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->k:Z

    .line 208
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v3, "android.permission.NFC"

    invoke-static {v0, v3}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    :goto_7
    sput-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->l:Z

    .line 211
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v3, "android.permission.RECORD_AUDIO"

    .line 212
    invoke-static {v0, v3}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    sput-boolean v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->m:Z

    .line 214
    return-void

    :cond_1
    move v0, v1

    .line 182
    goto :goto_0

    :cond_2
    move v0, v1

    .line 186
    goto :goto_1

    :cond_3
    move v0, v1

    .line 190
    goto :goto_2

    :cond_4
    move v0, v1

    .line 194
    goto :goto_3

    :cond_5
    move v0, v1

    .line 198
    goto :goto_4

    :cond_6
    move v0, v1

    .line 201
    goto :goto_5

    :cond_7
    move v0, v1

    .line 205
    goto :goto_6

    :cond_8
    move v0, v1

    .line 208
    goto :goto_7

    :cond_9
    move v2, v1

    .line 212
    goto :goto_8
.end method

.method private static e()Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 221
    new-instance v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    invoke-direct {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->o:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    .line 222
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->o:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    iput-boolean v1, v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->frontCamera:Z

    .line 223
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->o:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    iput-boolean v1, v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->backCamera:Z

    .line 226
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3

    .line 227
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v2, "camera"

    .line 228
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 230
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    .line 231
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 232
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 233
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 234
    if-nez v1, :cond_1

    .line 235
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->o:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->frontCamera:Z

    .line 231
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 236
    :cond_1
    if-ne v1, v6, :cond_0

    .line 237
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->o:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->backCamera:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    const-string v2, "Error retrieving camera information for device"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    :cond_2
    :goto_2
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->o:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    return-object v0

    .line 242
    :cond_3
    :try_start_1
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 243
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    move v0, v1

    .line 244
    :goto_3
    if-ge v0, v3, :cond_2

    .line 245
    invoke-static {v0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 246
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v6, :cond_5

    .line 247
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->o:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->frontCamera:Z

    .line 244
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 248
    :cond_5
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_4

    .line 249
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->o:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->backCamera:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 255
    :catch_1
    move-exception v0

    .line 259
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssertionError while retrieving camera info <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "> -- ignored"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static f()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 606
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getAaid(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 362
    if-nez p0, :cond_0

    .line 363
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    const-string v1, "Unable to get aaid value"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const/4 v0, 0x0

    .line 368
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAdInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 327
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    const-string v2, "Unable to get AdInfo instance on UI thread!"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_0
    :goto_0
    return-object v0

    .line 335
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    sget-object v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    .line 336
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    .line 338
    const-string v1, "Unable to get google play services advertising info, "

    .line 341
    :try_start_0
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    .line 344
    sget-object v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    const-string v3, "Unable to get google play services advertising info, google play services (e.g., the old version of the service doesn\'t support getting advertising ID)"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 347
    :catch_1
    move-exception v1

    .line 348
    sget-object v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    const-string v3, "Unable to get google play services advertising info, google play services is not available"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 349
    :catch_2
    move-exception v1

    .line 350
    sget-object v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    const-string v3, "Unable to get google play services advertising info, illegal state"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 351
    :catch_3
    move-exception v1

    .line 352
    sget-object v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    const-string v3, "Unable to get google play services advertising info, google play services is not installed, up-to-date, or enabled"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->b:Landroid/app/Application;

    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static getApplicationName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 522
    :try_start_0
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 523
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 525
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 530
    :goto_0
    return-object v0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    const-string v2, "Unable to determine package name"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 530
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAvailableCameras()Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;
    .locals 1

    .prologue
    .line 987
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->o:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    return-object v0
.end method

.method public static getAvailableExternalStorageSize()J
    .locals 2

    .prologue
    .line 618
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isExternalStorageReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 622
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getAvailableInternalStorageSize()J
    .locals 2

    .prologue
    .line 612
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAvailableStorageSize()J
    .locals 4

    .prologue
    .line 628
    const-wide/16 v0, 0x0

    .line 630
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAvailableInternalStorageSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 631
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAvailableExternalStorageSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 633
    return-wide v0
.end method

.method public static getBatteryLevel()Ljava/lang/Integer;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 570
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->f()Landroid/content/Intent;

    move-result-object v1

    .line 571
    if-nez v1, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-object v0

    .line 575
    :cond_1
    const-string v2, "scale"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 576
    const-string v3, "level"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 578
    if-eq v2, v4, :cond_0

    if-eq v1, v4, :cond_0

    .line 582
    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 584
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCellSignalDbm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 805
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 806
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 809
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getConfigOrientationFromRequestedOrientation(I)I
    .locals 1

    .prologue
    .line 911
    packed-switch p0, :pswitch_data_0

    .line 931
    :pswitch_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCurrentConfigOrientation()I

    move-result v0

    :goto_0
    return v0

    .line 917
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 924
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 928
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 911
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getCurrentConfigOrientation()I
    .locals 1

    .prologue
    .line 863
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public static getCurrentConfigOrientationString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 869
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 876
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNaturalConfigOrientationString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 871
    :pswitch_0
    const-string v0, "portrait"

    goto :goto_0

    .line 873
    :pswitch_1
    const-string v0, "landscape"

    goto :goto_0

    .line 869
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDisplayDensity()F
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static getDisplayDensityDpi()I
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static getDisplayHeight()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 294
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 296
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 297
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 298
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 300
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 303
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public static getDisplayWidth()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 310
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 312
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 314
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 315
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 316
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 318
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 321
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method public static declared-synchronized getHashedDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 386
    const-class v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    .line 387
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "android_id"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 389
    if-nez v3, :cond_0

    .line 403
    :goto_0
    monitor-exit v2

    return-object v0

    .line 394
    :cond_0
    :try_start_1
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 395
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 397
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v1

    .line 400
    :try_start_2
    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception calculating <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> hashed device id with ANDROID_ID <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getIpAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 816
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 817
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 818
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 819
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 820
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 824
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 826
    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_2

    .line 843
    :goto_0
    return-object v1

    .line 829
    :cond_2
    const/16 v0, 0x25

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 831
    if-gez v0, :cond_3

    move-object v0, v1

    :goto_1
    move-object v1, v0

    .line 834
    goto :goto_0

    .line 831
    :cond_3
    const/4 v2, 0x0

    .line 832
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 839
    :catch_0
    move-exception v0

    .line 840
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    const-string v2, "Unable to determine IP address for device"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 843
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLocaleCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocaleLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 938
    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->h:Z

    if-eqz v0, :cond_0

    .line 939
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v1, "location"

    .line 940
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 942
    if-eqz v0, :cond_0

    .line 943
    const-string v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 947
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 849
    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->g:Z

    if-eqz v0, :cond_0

    .line 850
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 852
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 854
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 857
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMcc()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 449
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 450
    iget v1, v0, Landroid/content/res/Configuration;->mcc:I

    if-nez v1, :cond_1

    .line 451
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    .line 454
    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    const-string v2, "Unable to parse mcc from network operator"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    const-string v1, "Unable to retrieve mcc"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const/4 v0, 0x0

    goto :goto_0

    .line 465
    :cond_1
    iget v0, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMillennialDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.com.millennialmedia/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1055
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1058
    return-object v1
.end method

.method public static getMnc()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 472
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 473
    iget v1, v0, Landroid/content/res/Configuration;->mnc:I

    if-nez v1, :cond_1

    .line 474
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    .line 477
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 488
    :goto_0
    return-object v0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    const-string v2, "Unable to parse mnc from network operator"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 483
    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    const-string v1, "Unable to retrieve mnc"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const/4 v0, 0x0

    goto :goto_0

    .line 488
    :cond_1
    iget v0, v0, Landroid/content/res/Configuration;->mnc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNaturalConfigOrientation()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 882
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 884
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 885
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 887
    iget v4, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v1, :cond_1

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v1

    .line 894
    :goto_0
    return v0

    .line 890
    :cond_1
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    :cond_2
    move v0, v1

    .line 892
    goto :goto_0

    :cond_3
    move v0, v2

    .line 894
    goto :goto_0
.end method

.method public static getNaturalConfigOrientationString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 901
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNaturalConfigOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 902
    const-string v0, "landscape"

    .line 905
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "portrait"

    goto :goto_0
.end method

.method public static getNetworkConnectionType()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 695
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 696
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 698
    if-nez v0, :cond_0

    .line 699
    const-string v0, "unknown"

    .line 799
    :goto_0
    return-object v0

    .line 702
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-ne v1, v2, :cond_3

    .line 704
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 706
    if-ne v1, v2, :cond_1

    .line 707
    const-string v0, "wifi"

    goto :goto_0

    .line 708
    :cond_1
    if-nez v1, :cond_2

    .line 709
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 786
    const-string v0, "unknown"

    goto :goto_0

    .line 711
    :pswitch_0
    const-string v0, "1xrtt"

    goto :goto_0

    .line 716
    :pswitch_1
    const-string v0, "cdma"

    goto :goto_0

    .line 721
    :pswitch_2
    const-string v0, "edge"

    goto :goto_0

    .line 726
    :pswitch_3
    const-string v0, "ehrpd"

    goto :goto_0

    .line 731
    :pswitch_4
    const-string v0, "evdo_0"

    goto :goto_0

    .line 736
    :pswitch_5
    const-string v0, "evdo_a"

    goto :goto_0

    .line 741
    :pswitch_6
    const-string v0, "evdo_b"

    goto :goto_0

    .line 746
    :pswitch_7
    const-string v0, "gprs"

    goto :goto_0

    .line 751
    :pswitch_8
    const-string v0, "hsdpa"

    goto :goto_0

    .line 756
    :pswitch_9
    const-string v0, "hspa"

    goto :goto_0

    .line 761
    :pswitch_a
    const-string v0, "hspap"

    goto :goto_0

    .line 766
    :pswitch_b
    const-string v0, "hsupa"

    goto :goto_0

    .line 771
    :pswitch_c
    const-string v0, "iden"

    goto :goto_0

    .line 776
    :pswitch_d
    const-string v0, "lte"

    goto :goto_0

    .line 781
    :pswitch_e
    const-string v0, "umts"

    goto :goto_0

    .line 792
    :cond_2
    const-string v0, "unknown"

    goto :goto_0

    .line 796
    :cond_3
    const-string v0, "offline"

    goto :goto_0

    .line 709
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_2
        :pswitch_e
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_6
        :pswitch_d
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method public static getNetworkOperator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 495
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 496
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 495
    return-object v0
.end method

.method public static getNetworkOperatorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 502
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 503
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 502
    return-object v0
.end method

.method public static getPicturesDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 1064
    const/4 v0, 0x0

    .line 1066
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 1067
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v1

    .line 1069
    array-length v2, v1

    if-lez v2, :cond_0

    .line 1070
    const/4 v0, 0x0

    aget-object v0, v1, v0

    :cond_0
    move-object v1, v0

    .line 1076
    :goto_0
    if-eqz v1, :cond_2

    .line 1077
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AOL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1078
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1083
    :goto_1
    return-object v0

    .line 1073
    :cond_1
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 544
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 545
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->d:Ljava/lang/String;

    .line 564
    :goto_0
    return-object v0

    .line 548
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 553
    :try_start_0
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :cond_1
    :goto_1
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 561
    new-instance v0, Landroid/webkit/WebView;

    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->d:Ljava/lang/String;

    .line 564
    :cond_2
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->d:Ljava/lang/String;

    goto :goto_0

    .line 554
    :catch_0
    move-exception v0

    .line 556
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    const-string v1, "Unable to get user agent from call to getDefaultUserAgent"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getVolume(I)I
    .locals 3

    .prologue
    .line 1029
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1031
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 1032
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 1033
    const/4 v0, 0x0

    .line 1038
    :goto_0
    return v0

    .line 1036
    :cond_0
    const/high16 v2, 0x42c80000    # 100.0f

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 1038
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static hasBluetooth()Z
    .locals 2

    .prologue
    .line 1005
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasBluetoothPermission()Z
    .locals 1

    .prologue
    .line 1011
    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->k:Z

    return v0
.end method

.method public static hasCalendarPermission()Z
    .locals 1

    .prologue
    .line 993
    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->i:Z

    return v0
.end method

.method public static hasCamera()Z
    .locals 1

    .prologue
    .line 977
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->o:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->backCamera:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->o:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->frontCamera:Z

    if-eqz v0, :cond_1

    .line 978
    :cond_0
    const/4 v0, 0x1

    .line 981
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasFineLocationPermission()Z
    .locals 1

    .prologue
    .line 959
    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->h:Z

    return v0
.end method

.method public static hasGps()Z
    .locals 2

    .prologue
    .line 953
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location.gps"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasMicrophone()Z
    .locals 2

    .prologue
    .line 965
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.microphone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasMicrophonePermission()Z
    .locals 1

    .prologue
    .line 971
    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->m:Z

    return v0
.end method

.method public static hasNfc()Z
    .locals 2

    .prologue
    .line 1017
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasNfcPermission()Z
    .locals 1

    .prologue
    .line 1023
    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->l:Z

    return v0
.end method

.method public static hasVibratePermission()Z
    .locals 1

    .prologue
    .line 999
    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->j:Z

    return v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 3

    .prologue
    .line 102
    sput-object p0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->b:Landroid/app/Application;

    .line 103
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    .line 105
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->d()V

    .line 107
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c()V

    .line 109
    new-instance v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils$1;

    invoke-direct {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils$1;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 119
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->e()Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->o:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    .line 121
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Environment initialized with the following data.\n\tMillennial Media Ad SDK version: 6.3.1-4006cb2\n\tAndroid SDK version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tApplication name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 124
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tApplication id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 125
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tLocale country "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocaleCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tLocale language: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tUser agent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tExternal storage available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isExternalStorageReadable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tDisplay width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tDisplay height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tDisplay density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayDensity()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tDisplay dpi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 133
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayDensityDpi()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tNatural screen orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 134
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNaturalConfigOrientationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tREAD_EXTERNAL_STORAGE permission available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tWRITE_EXTERNAL_STORAGE permission available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tACCESS_WIFI_STATE permission available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tWRITE_CALENDAR permission available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tACCESS_FINE_LOCATION permission available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tVIBRATE permission available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tBLUETOOTH permission available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tNFC permission available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tRECORD_AUDIO permission available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tFront camera available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->o:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    iget-boolean v2, v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->frontCamera:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tBack camera available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->o:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    iget-boolean v2, v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->backCamera:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static isCalendarSupported()Z
    .locals 2

    .prologue
    .line 1097
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeviceIdle()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 1112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1113
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->b:Landroid/app/Application;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1115
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 1118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDevicePlugged()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 590
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->f()Landroid/content/Intent;

    move-result-object v1

    .line 591
    if-nez v1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return v0

    .line 595
    :cond_1
    const-string v2, "plugged"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 596
    if-eqz v1, :cond_0

    .line 600
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isExternalStorageReadable()Z
    .locals 2

    .prologue
    .line 648
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 650
    sget-boolean v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    .line 651
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 650
    :goto_0
    return v0

    .line 651
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExternalStorageSupported()Z
    .locals 1

    .prologue
    .line 665
    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->f:Z

    return v0
.end method

.method public static isExternalStorageWritable()Z
    .locals 2

    .prologue
    .line 657
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 659
    sget-boolean v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->f:Z

    if-eqz v1, :cond_0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLimitAdTrackingEnabled(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Z
    .locals 2

    .prologue
    .line 374
    if-nez p0, :cond_0

    .line 375
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->a:Ljava/lang/String;

    const-string v1, "Unable to get limit ad tracking value, ad info is null"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v0, 0x0

    .line 380
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public static isNetworkAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 671
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 672
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 674
    if-nez v0, :cond_1

    .line 687
    :cond_0
    :goto_0
    return v1

    .line 677
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 678
    if-eqz v2, :cond_0

    move v0, v1

    .line 679
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 680
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 681
    const/4 v1, 0x1

    goto :goto_0

    .line 679
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isSmsSupported()Z
    .locals 2

    .prologue
    .line 1089
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1091
    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTelSupported()Z
    .locals 2

    .prologue
    .line 1103
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1105
    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.class public Lcom/mopub/common/ClientMetadata;
.super Ljava/lang/Object;
.source "ClientMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    }
.end annotation


# static fields
.field private static volatile k:Lcom/mopub/common/ClientMetadata;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private final t:Landroid/content/Context;

.field private final u:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/mopub/common/ClientMetadata;->i:Z

    .line 49
    iput-boolean v0, p0, Lcom/mopub/common/ClientMetadata;->j:Z

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->t:Landroid/content/Context;

    .line 141
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->t:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->u:Landroid/net/ConnectivityManager;

    .line 143
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->l:Ljava/lang/String;

    .line 144
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->m:Ljava/lang/String;

    .line 145
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->n:Ljava/lang/String;

    .line 146
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->o:Ljava/lang/String;

    .line 148
    const-string v0, "4.11.0"

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->p:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->q:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->t:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->r:Ljava/lang/String;

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->r:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 160
    :goto_0
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->s:Ljava/lang/String;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->t:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 166
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/common/ClientMetadata;->a:Ljava/lang/String;

    .line 167
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/common/ClientMetadata;->b:Ljava/lang/String;

    .line 168
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 170
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/common/ClientMetadata;->a:Ljava/lang/String;

    .line 171
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/common/ClientMetadata;->c:Ljava/lang/String;

    .line 174
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/common/ClientMetadata;->d:Ljava/lang/String;

    .line 175
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/common/ClientMetadata;->e:Ljava/lang/String;

    .line 178
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/common/ClientMetadata;->f:Ljava/lang/String;

    .line 179
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 180
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->h:Ljava/lang/String;

    .line 189
    return-void

    .line 157
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 182
    :catch_1
    move-exception v0

    .line 183
    iput-object v1, p0, Lcom/mopub/common/ClientMetadata;->f:Ljava/lang/String;

    .line 184
    iput-object v1, p0, Lcom/mopub/common/ClientMetadata;->g:Ljava/lang/String;

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 196
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-object v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v0, "Failed to retrieve PackageInfo#versionName."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    if-nez v0, :cond_0

    const-string v0, ""

    .line 207
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 206
    :cond_0
    invoke-static {v0}, Lcom/mopub/common/util/Utils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static clearForTesting()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 417
    const/4 v0, 0x0

    sput-object v0, Lcom/mopub/common/ClientMetadata;->k:Lcom/mopub/common/ClientMetadata;

    .line 418
    return-void
.end method

.method public static getInstance()Lcom/mopub/common/ClientMetadata;
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/mopub/common/ClientMetadata;->k:Lcom/mopub/common/ClientMetadata;

    .line 128
    if-nez v0, :cond_0

    .line 130
    const-class v1, Lcom/mopub/common/ClientMetadata;

    monitor-enter v1

    .line 131
    :try_start_0
    sget-object v0, Lcom/mopub/common/ClientMetadata;->k:Lcom/mopub/common/ClientMetadata;

    .line 132
    monitor-exit v1

    .line 135
    :cond_0
    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/mopub/common/ClientMetadata;->k:Lcom/mopub/common/ClientMetadata;

    .line 109
    if-nez v0, :cond_1

    .line 110
    const-class v1, Lcom/mopub/common/ClientMetadata;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v0, Lcom/mopub/common/ClientMetadata;->k:Lcom/mopub/common/ClientMetadata;

    .line 112
    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/mopub/common/ClientMetadata;

    invoke-direct {v0, p0}, Lcom/mopub/common/ClientMetadata;-><init>(Landroid/content/Context;)V

    .line 114
    sput-object v0, Lcom/mopub/common/ClientMetadata;->k:Lcom/mopub/common/ClientMetadata;

    .line 116
    :cond_0
    monitor-exit v1

    .line 118
    :cond_1
    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setInstance(Lcom/mopub/common/ClientMetadata;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 410
    const-class v1, Lcom/mopub/common/ClientMetadata;

    monitor-enter v1

    .line 411
    :try_start_0
    sput-object p0, Lcom/mopub/common/ClientMetadata;->k:Lcom/mopub/common/ClientMetadata;

    .line 412
    monitor-exit v1

    .line 413
    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getActiveNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 228
    .line 229
    iget-object v1, p0, Lcom/mopub/common/ClientMetadata;->t:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1, v2}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/mopub/common/ClientMetadata;->u:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 231
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 234
    :cond_0
    invoke-static {v0}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->a(I)Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->t:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public getDeviceDimensions()Landroid/graphics/Point;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->getDeviceDimensions(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 376
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public declared-synchronized getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeviceLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->t:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceScreenHeightDip()I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/Dips;->screenHeightAsIntDips(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getDeviceScreenWidthDip()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/Dips;->screenWidthAsIntDips(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getIsoCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperatorForUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientationString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->t:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 215
    const-string v0, "u"

    .line 216
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 217
    const-string v0, "p"

    .line 223
    :cond_0
    :goto_0
    return-object v0

    .line 218
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 219
    const-string v0, "l"

    goto :goto_0

    .line 220
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 221
    const-string v0, "s"

    goto :goto_0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getSimIsoCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->g:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized isAdvertisingInfoSet()Z
    .locals 1

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mopub/common/ClientMetadata;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDoNotTrackSet()Z
    .locals 1

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mopub/common/ClientMetadata;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAdvertisingInfo(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ifa:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->h:Ljava/lang/String;

    .line 315
    iput-boolean p2, p0, Lcom/mopub/common/ClientMetadata;->i:Z

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/common/ClientMetadata;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit p0

    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

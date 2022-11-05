.class public Lcom/google/android/gms/wearable/internal/zzcx;
.super Lcom/google/android/gms/common/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzl",
        "<",
        "Lcom/google/android/gms/wearable/internal/zzbw;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbUT:Lcom/google/android/gms/wearable/internal/zzbx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/wearable/internal/zzbx",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbUU:Lcom/google/android/gms/wearable/internal/zzbx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/wearable/internal/zzbx",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbUV:Lcom/google/android/gms/wearable/internal/zzbx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/wearable/internal/zzbx",
            "<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbUW:Lcom/google/android/gms/wearable/internal/zzbx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/wearable/internal/zzbx",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbUX:Lcom/google/android/gms/wearable/internal/zzbx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/wearable/internal/zzbx",
            "<",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbUY:Lcom/google/android/gms/wearable/internal/zzbx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/wearable/internal/zzbx",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbUZ:Lcom/google/android/gms/wearable/internal/zzbx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/wearable/internal/zzbx",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbVa:Lcom/google/android/gms/wearable/internal/zzbx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/wearable/internal/zzbx",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbVb:Lcom/google/android/gms/wearable/internal/zzcz;

.field private final zzbtI:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzg;)V
    .locals 8

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzcz;->zzck(Landroid/content/Context;)Lcom/google/android/gms/wearable/internal/zzcz;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/wearable/internal/zzcx;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzg;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/wearable/internal/zzcz;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzg;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/wearable/internal/zzcz;)V
    .locals 7

    const/16 v3, 0xe

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUT:Lcom/google/android/gms/wearable/internal/zzbx;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUU:Lcom/google/android/gms/wearable/internal/zzbx;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUV:Lcom/google/android/gms/wearable/internal/zzbx;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUW:Lcom/google/android/gms/wearable/internal/zzbx;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUX:Lcom/google/android/gms/wearable/internal/zzbx;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUY:Lcom/google/android/gms/wearable/internal/zzbx;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUZ:Lcom/google/android/gms/wearable/internal/zzbx;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbVa:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbtI:Ljava/util/concurrent/ExecutorService;

    iput-object p7, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbVb:Lcom/google/android/gms/wearable/internal/zzcz;

    return-void
.end method

.method private zza(Landroid/os/ParcelFileDescriptor;[B)Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "[B)",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcx$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzcx$1;-><init>(Lcom/google/android/gms/wearable/internal/zzcx;Landroid/os/ParcelFileDescriptor;[B)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method private zzb(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;Landroid/net/Uri;JJ)Ljava/lang/Runnable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "JJ)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "startOffset is negative: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    cmp-long v0, p6, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v1, "invalid length: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcx$3;

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/wearable/internal/zzcx$3;-><init>(Lcom/google/android/gms/wearable/internal/zzcx;Landroid/net/Uri;Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;JJ)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private zzb(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;Landroid/net/Uri;Z)Ljava/lang/Runnable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcx$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/internal/zzcx$2;-><init>(Lcom/google/android/gms/wearable/internal/zzcx;Landroid/net/Uri;Lcom/google/android/gms/internal/zzaad$zzb;ZLjava/lang/String;)V

    return-object v0
.end method

.method public static zzcj(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.wearable.app.cn.UPDATE_ANDROID_WEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.wearable.app.cn"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "market://details"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "com.google.android.wearable.app.cn"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method


# virtual methods
.method protected zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 3

    const-string v0, "WearableClient"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WearableClient"

    const/16 v1, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "onPostInitHandler: statusCode "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUT:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/internal/zzbx;->zzfE(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUU:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/internal/zzbx;->zzfE(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUV:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/internal/zzbx;->zzfE(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUW:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/internal/zzbx;->zzfE(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUX:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/internal/zzbx;->zzfE(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUY:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/internal/zzbx;->zzfE(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUZ:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/internal/zzbx;->zzfE(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbVa:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/internal/zzbx;->zzfE(Landroid/os/IBinder;)V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/zzl;->zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/internal/zzf$zzf;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzvh()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.wearable.app.cn"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string v0, "com.google.android.wearable.api.version"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    sget v1, Lcom/google/android/gms/common/zze;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    if-ge v0, v1, :cond_1

    const-string v1, "WearableClient"

    sget v2, Lcom/google/android/gms/common/zze;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    const/16 v3, 0x50

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Android Wear out of date. Requires API version "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/wearable/internal/zzcx;->zzcj(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/wearable/internal/zzcx;->zza(Lcom/google/android/gms/common/internal/zzf$zzf;ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/wearable/internal/zzcx;->zza(Lcom/google/android/gms/common/internal/zzf$zzf;ILandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/zzl;->zza(Lcom/google/android/gms/common/internal/zzf$zzf;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataItemResult;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcw$zzk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzcw$zzk;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/wearable/internal/zzbw;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Landroid/net/Uri;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Landroid/net/Uri;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/DataItemBuffer;",
            ">;",
            "Landroid/net/Uri;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcw$zzl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzcw$zzl;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/wearable/internal/zzbw;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Landroid/net/Uri;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/Asset;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;",
            ">;",
            "Lcom/google/android/gms/wearable/Asset;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcw$zzm;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzcw$zzm;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/wearable/internal/zzbw;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Lcom/google/android/gms/wearable/Asset;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbVa:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbx;->zza(Lcom/google/android/gms/wearable/internal/zzcx;Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/Object;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;Lcom/google/android/gms/internal/zzabh;[Landroid/content/IntentFilter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbVa:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-static {p3, p4}, Lcom/google/android/gms/wearable/internal/zzcy;->zze(Lcom/google/android/gms/internal/zzabh;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzcy;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/android/gms/wearable/internal/zzbx;->zza(Lcom/google/android/gms/wearable/internal/zzcx;Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/zzcy;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Lcom/google/android/gms/internal/zzabh;Ljava/lang/String;[Landroid/content/IntentFilter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/IntentFilter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUV:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-static {p3, p5}, Lcom/google/android/gms/wearable/internal/zzcy;->zzd(Lcom/google/android/gms/internal/zzabh;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzcy;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/android/gms/wearable/internal/zzbx;->zza(Lcom/google/android/gms/wearable/internal/zzcx;Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/zzcy;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcq;

    invoke-direct {v0, p4, p2}, Lcom/google/android/gms/wearable/internal/zzcq;-><init>(Ljava/lang/String;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUV:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-static {p3, p4, p5}, Lcom/google/android/gms/wearable/internal/zzcy;->zza(Lcom/google/android/gms/internal/zzabh;Ljava/lang/String;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzcy;

    move-result-object v2

    invoke-virtual {v1, p0, p1, v0, v2}, Lcom/google/android/gms/wearable/internal/zzbx;->zza(Lcom/google/android/gms/wearable/internal/zzcx;Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/zzcy;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUV:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbx;->zza(Lcom/google/android/gms/wearable/internal/zzcx;Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcq;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/wearable/internal/zzcq;-><init>(Ljava/lang/String;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUV:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-virtual {v1, p0, p1, v0}, Lcom/google/android/gms/wearable/internal/zzbx;->zza(Lcom/google/android/gms/wearable/internal/zzcx;Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/DataApi$DataListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUW:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbx;->zza(Lcom/google/android/gms/wearable/internal/zzcx;Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/Object;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/DataApi$DataListener;Lcom/google/android/gms/internal/zzabh;[Landroid/content/IntentFilter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUW:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-static {p3, p4}, Lcom/google/android/gms/wearable/internal/zzcy;->zza(Lcom/google/android/gms/internal/zzabh;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzcy;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/android/gms/wearable/internal/zzbx;->zza(Lcom/google/android/gms/wearable/internal/zzcx;Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/zzcy;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/DataItemAsset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;",
            ">;",
            "Lcom/google/android/gms/wearable/DataItemAsset;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/android/gms/wearable/DataItemAsset;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/Asset;->createFromRef(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/zzcx;->zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/Asset;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/MessageApi$MessageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUX:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbx;->zza(Lcom/google/android/gms/wearable/internal/zzcx;Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/Object;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/MessageApi$MessageListener;Lcom/google/android/gms/internal/zzabh;[Landroid/content/IntentFilter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUX:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-static {p3, p4}, Lcom/google/android/gms/wearable/internal/zzcy;->zzb(Lcom/google/android/gms/internal/zzabh;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzcy;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/android/gms/wearable/internal/zzbx;->zza(Lcom/google/android/gms/wearable/internal/zzcx;Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/zzcy;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/NodeApi$NodeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUY:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbx;->zza(Lcom/google/android/gms/wearable/internal/zzcx;Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/Object;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/NodeApi$NodeListener;Lcom/google/android/gms/internal/zzabh;[Landroid/content/IntentFilter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbUY:Lcom/google/android/gms/wearable/internal/zzbx;

    invoke-static {p3, p4}, Lcom/google/android/gms/wearable/internal/zzcy;->zzc(Lcom/google/android/gms/internal/zzabh;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzcy;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/android/gms/wearable/internal/zzbx;->zza(Lcom/google/android/gms/wearable/internal/zzcx;Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/zzcy;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/PutDataRequest;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataItemResult;",
            ">;",
            "Lcom/google/android/gms/wearable/PutDataRequest;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getAssets()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->getData()[B

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->getDigest()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Put for "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contains invalid asset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/PutDataRequest;->zzy(Landroid/net/Uri;)Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getData()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/wearable/PutDataRequest;->setData([B)Lcom/google/android/gms/wearable/PutDataRequest;

    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->isUrgent()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/PutDataRequest;->setUrgent()Lcom/google/android/gms/wearable/PutDataRequest;

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getAssets()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/Asset;->getData()[B

    move-result-object v5

    if-eqz v5, :cond_4

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    const-string v6, "WearableClient"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "WearableClient"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x3d

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "processAssets: replacing data with FD in asset: "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " read:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " write:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Lcom/google/android/gms/wearable/Asset;->createFromFd(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Lcom/google/android/gms/wearable/PutDataRequest;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;

    const/4 v0, 0x1

    aget-object v0, v5, v0

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/Asset;->getData()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzcx;->zza(Landroid/os/ParcelFileDescriptor;[B)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbtI:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to create ParcelFileDescriptor for asset in request: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/wearable/Asset;->getUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_5

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/Asset;->getUri()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/wearable/Asset;->createFromFd(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Lcom/google/android/gms/wearable/PutDataRequest;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcw$zzq;

    invoke-direct {v0, p1, v3}, Lcom/google/android/gms/wearable/internal/zzcw$zzq;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/util/List;)V

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzci;

    const/16 v3, 0xfa5

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/wearable/internal/zzci;-><init>(ILcom/google/android/gms/wearable/internal/zzao;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/wearable/internal/zzcw$zzq;->zza(Lcom/google/android/gms/wearable/internal/zzci;)V

    const-string v0, "WearableClient"

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/Asset;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Couldn\'t resolve asset URI: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/wearable/PutDataRequest;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcw$zzq;

    invoke-direct {v1, p1, v3}, Lcom/google/android/gms/wearable/internal/zzcw$zzq;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/wearable/internal/zzbw;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Lcom/google/android/gms/wearable/PutDataRequest;)V

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;Landroid/net/Uri;JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "JJ)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbtI:Ljava/util/concurrent/ExecutorService;

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/wearable/internal/zzcx;->zzb(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;Landroid/net/Uri;JJ)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzaad$zzb;->zzB(Lcom/google/android/gms/common/api/Status;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbtI:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/wearable/internal/zzcx;->zzb(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;Landroid/net/Uri;Z)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzaad$zzb;->zzB(Lcom/google/android/gms/common/api/Status;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcw$zzt;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzcw$zzt;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/wearable/internal/zzbw;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaad$zzb;Landroid/net/Uri;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;",
            ">;",
            "Landroid/net/Uri;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcw$zze;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzcw$zze;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/wearable/internal/zzbw;->zzb(Lcom/google/android/gms/wearable/internal/zzbu;Landroid/net/Uri;I)V

    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzaad$zzb;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$GetAllCapabilitiesResult;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcw$zzf;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzcw$zzf;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/wearable/internal/zzbw;->zza(Lcom/google/android/gms/wearable/internal/zzbu;I)V

    return-void
.end method

.method public zze(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/ChannelApi$OpenChannelResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcw$zzp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzcw$zzp;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/wearable/internal/zzbw;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected zzeA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    return-object v0
.end method

.method protected zzez()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.wearable.BIND"

    return-object v0
.end method

.method protected zzfF(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbw;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzfD(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbw;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzcx;->zzfF(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbw;

    move-result-object v0

    return-object v0
.end method

.method public zzh(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$GetCapabilityResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcw$zzg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzcw$zzg;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/wearable/internal/zzbw;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;I)V

    return-void
.end method

.method public zzi(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcw$zzd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzcw$zzd;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/wearable/internal/zzbw;->zzb(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;I)V

    return-void
.end method

.method public zzv(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$AddLocalCapabilityResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcw$zza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzcw$zza;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/wearable/internal/zzbw;->zzd(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;)V

    return-void
.end method

.method public zzvh()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbVb:Lcom/google/android/gms/wearable/internal/zzcz;

    const-string v1, "com.google.android.wearable.app.cn"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/internal/zzcz;->zziq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzw(Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/DataItemBuffer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcw$zzl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzcw$zzl;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/zzbw;->zzb(Lcom/google/android/gms/wearable/internal/zzbu;)V

    return-void
.end method

.method public zzw(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$RemoveLocalCapabilityResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcw$zzs;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzcw$zzs;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/wearable/internal/zzbw;->zze(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;)V

    return-void
.end method

.method public zzx(Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcw$zzn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzcw$zzn;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/zzbw;->zzc(Lcom/google/android/gms/wearable/internal/zzbu;)V

    return-void
.end method

.method public zzx(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcw$zzc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzcw$zzc;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/wearable/internal/zzbw;->zzf(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;)V

    return-void
.end method

.method protected zzxv()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx;->zzbVb:Lcom/google/android/gms/wearable/internal/zzcz;

    const-string v1, "com.google.android.wearable.app.cn"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/internal/zzcz;->zziq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.wearable.app.cn"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms"

    goto :goto_0
.end method

.method public zzy(Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcw$zzj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzcw$zzj;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/zzbw;->zzd(Lcom/google/android/gms/wearable/internal/zzbu;)V

    return-void
.end method

.method public zzy(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/Channel$GetInputStreamResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzac;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/internal/zzac;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzcw$zzh;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/wearable/internal/zzcw$zzh;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/internal/zzac;)V

    invoke-interface {v0, v2, v1, p2}, Lcom/google/android/gms/wearable/internal/zzbw;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Lcom/google/android/gms/wearable/internal/zzbt;Ljava/lang/String;)V

    return-void
.end method

.method public zzz(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/Channel$GetOutputStreamResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzac;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/internal/zzac;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzcw$zzi;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/wearable/internal/zzcw$zzi;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/internal/zzac;)V

    invoke-interface {v0, v2, v1, p2}, Lcom/google/android/gms/wearable/internal/zzbw;->zzb(Lcom/google/android/gms/wearable/internal/zzbu;Lcom/google/android/gms/wearable/internal/zzbt;Ljava/lang/String;)V

    return-void
.end method

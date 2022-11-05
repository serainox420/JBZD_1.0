.class public Lcom/google/android/gms/internal/zzbnl;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzbZh:Z

.field private zzbZi:Lcom/google/android/gms/measurement/AppMeasurement;

.field final zzbZj:Lcom/google/android/gms/measurement/AppMeasurement$zzc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbnl;->zzbZh:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnl;->zzbZi:Lcom/google/android/gms/measurement/AppMeasurement;

    new-instance v0, Lcom/google/android/gms/internal/zzbnl$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbnl$1;-><init>(Lcom/google/android/gms/internal/zzbnl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnl;->zzbZj:Lcom/google/android/gms/measurement/AppMeasurement$zzc;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnl;->mContext:Landroid/content/Context;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/AppMeasurement;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnl;->zzbZi:Lcom/google/android/gms/measurement/AppMeasurement;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FirebaseCrashAnalytics"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unable to log event, missing measurement library: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private zzR(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnl;->zzbZi:Lcom/google/android/gms/measurement/AppMeasurement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnl;->zzbZi:Lcom/google/android/gms/measurement/AppMeasurement;

    const-string v1, "crash"

    const-string v2, "_ae"

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/measurement/AppMeasurement;->logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public zzWB()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbnl;->zzbZh:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnl;->zzbZi:Lcom/google/android/gms/measurement/AppMeasurement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnl;->zzbZi:Lcom/google/android/gms/measurement/AppMeasurement;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnl;->zzbZj:Lcom/google/android/gms/measurement/AppMeasurement$zzc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/AppMeasurement;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzc;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbnl;->zzbZh:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "FirebaseCrashAnalytics"

    const-string v1, "Firebase Analytics breadcrumbs is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public zza(ZJ)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "fatal"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbnl;->zzR(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string v1, "fatal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

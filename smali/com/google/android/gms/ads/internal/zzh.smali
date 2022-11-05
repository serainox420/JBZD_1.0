.class public Lcom/google/android/gms/ads/internal/zzh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final zzrJ:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzh;->zzrJ:Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzh;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzh;->zzrJ:Ljava/lang/Object;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzpd;)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpd;->zzkb()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcS()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzEL:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v0, v2

    :goto_1
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpd;->zzkc()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move v0, v2

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzh;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzh;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Lcom/google/android/gms/internal/zzpd;)V
    .locals 8

    const/4 v7, 0x0

    if-eqz p4, :cond_0

    move-object v5, v7

    :goto_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/zzh;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;ZLcom/google/android/gms/internal/zzpd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzpd;->zzke()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, v4

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/zzh;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;ZLcom/google/android/gms/internal/zzpd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;ZLcom/google/android/gms/internal/zzpd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 10

    invoke-static {p4}, Lcom/google/android/gms/ads/internal/zzh;->zza(Lcom/google/android/gms/internal/zzpd;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "Context not provided to fetch application settings"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "App settings could not be fetched. Required parameters missing"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzh;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzpo;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/internal/zzji;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/ads/internal/zzh$1;

    move-object/from16 v0, p7

    invoke-direct {v4, p0, v0}, Lcom/google/android/gms/ads/internal/zzh$1;-><init>(Lcom/google/android/gms/ads/internal/zzh;Ljava/lang/Runnable;)V

    sget-object v9, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzh$2;

    move-object v2, p0

    move-object v5, p5

    move-object/from16 v6, p6

    move v7, p3

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/zzh$2;-><init>(Lcom/google/android/gms/ads/internal/zzh;Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/internal/zzid;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    invoke-virtual {v9, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

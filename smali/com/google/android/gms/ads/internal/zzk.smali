.class public Lcom/google/android/gms/ads/internal/zzk;
.super Lcom/google/android/gms/internal/zzeq$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzrJ:Ljava/lang/Object;

.field private final zzsv:Lcom/google/android/gms/ads/internal/zze;

.field private final zzsz:Lcom/google/android/gms/internal/zzka;

.field private final zztk:Lcom/google/android/gms/internal/zzep;

.field private final zztl:Lcom/google/android/gms/internal/zzhp;

.field private final zztm:Lcom/google/android/gms/internal/zzhq;

.field private final zztn:Landroid/support/v4/f/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzhs;",
            ">;"
        }
    .end annotation
.end field

.field private final zzto:Landroid/support/v4/f/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzhr;",
            ">;"
        }
    .end annotation
.end field

.field private final zztp:Lcom/google/android/gms/internal/zzhc;

.field private final zztq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zztr:Lcom/google/android/gms/internal/zzex;

.field private final zzts:Ljava/lang/String;

.field private final zztt:Lcom/google/android/gms/internal/zzqh;

.field private zztu:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/ads/internal/zzs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzep;Lcom/google/android/gms/internal/zzhp;Lcom/google/android/gms/internal/zzhq;Landroid/support/v4/f/k;Landroid/support/v4/f/k;Lcom/google/android/gms/internal/zzhc;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/zze;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzka;",
            "Lcom/google/android/gms/internal/zzqh;",
            "Lcom/google/android/gms/internal/zzep;",
            "Lcom/google/android/gms/internal/zzhp;",
            "Lcom/google/android/gms/internal/zzhq;",
            "Landroid/support/v4/f/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzhs;",
            ">;",
            "Landroid/support/v4/f/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzhr;",
            ">;",
            "Lcom/google/android/gms/internal/zzhc;",
            "Lcom/google/android/gms/internal/zzex;",
            "Lcom/google/android/gms/ads/internal/zze;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeq$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzrJ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzts:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzk;->zzsz:Lcom/google/android/gms/internal/zzka;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzk;->zztt:Lcom/google/android/gms/internal/zzqh;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzk;->zztk:Lcom/google/android/gms/internal/zzep;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/zzk;->zztm:Lcom/google/android/gms/internal/zzhq;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/zzk;->zztl:Lcom/google/android/gms/internal/zzhp;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/zzk;->zztn:Landroid/support/v4/f/k;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/zzk;->zzto:Landroid/support/v4/f/k;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/zzk;->zztp:Lcom/google/android/gms/internal/zzhc;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzci()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zztq:Ljava/util/List;

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/zzk;->zztr:Lcom/google/android/gms/internal/zzex;

    iput-object p12, p0, Lcom/google/android/gms/ads/internal/zzk;->zzsv:Lcom/google/android/gms/ads/internal/zze;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzk;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzrJ:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzk;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zztu:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzk;)Lcom/google/android/gms/internal/zzhp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zztl:Lcom/google/android/gms/internal/zzhp;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/internal/zzk;)Lcom/google/android/gms/internal/zzhq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zztm:Lcom/google/android/gms/internal/zzhq;

    return-object v0
.end method

.method private zzci()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zztm:Lcom/google/android/gms/internal/zzhq;

    if-eqz v1, :cond_0

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zztl:Lcom/google/android/gms/internal/zzhp;

    if-eqz v1, :cond_1

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zztn:Landroid/support/v4/f/k;

    invoke-virtual {v1}, Landroid/support/v4/f/k;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/internal/zzk;)Landroid/support/v4/f/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zztn:Landroid/support/v4/f/k;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/ads/internal/zzk;)Lcom/google/android/gms/internal/zzep;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zztk:Lcom/google/android/gms/internal/zzep;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/ads/internal/zzk;)Landroid/support/v4/f/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzto:Landroid/support/v4/f/k;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/ads/internal/zzk;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzci()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/ads/internal/zzk;)Lcom/google/android/gms/internal/zzhc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zztp:Lcom/google/android/gms/internal/zzhc;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/ads/internal/zzk;)Lcom/google/android/gms/internal/zzex;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zztr:Lcom/google/android/gms/internal/zzex;

    return-object v0
.end method


# virtual methods
.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzrJ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zztu:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zztu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/zzs;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzs;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    monitor-exit v2

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLoading()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzrJ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zztu:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zztu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/zzs;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzs;->isLoading()Z

    move-result v0

    :goto_0
    monitor-exit v2

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    monitor-exit v2

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected zzcj()Lcom/google/android/gms/ads/internal/zzs;
    .locals 7

    new-instance v0, Lcom/google/android/gms/ads/internal/zzs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzsv:Lcom/google/android/gms/ads/internal/zze;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzk;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzeg;->zzk(Landroid/content/Context;)Lcom/google/android/gms/internal/zzeg;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzk;->zzts:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzk;->zzsz:Lcom/google/android/gms/internal/zzka;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzk;->zztt:Lcom/google/android/gms/internal/zzqh;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzs;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;)V

    return-object v0
.end method

.method public zzf(Lcom/google/android/gms/internal/zzec;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/zzk$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/zzk$1;-><init>(Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/internal/zzec;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzk;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

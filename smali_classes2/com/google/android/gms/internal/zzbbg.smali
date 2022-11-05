.class public Lcom/google/android/gms/internal/zzbbg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbbm;


# static fields
.field private static final zzbEI:Ljava/lang/Object;

.field private static zzbJw:Lcom/google/android/gms/internal/zzbbg;

.field private static final zzbJz:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbJx:Lcom/google/android/gms/internal/zzbca;

.field private zzbJy:Lcom/google/android/gms/internal/zzbbn;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbbg;->zzbEI:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "GET"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "HEAD"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "POST"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "PUT"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbbg;->zzbJz:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbbo;->zzcf(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbce;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbce;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzbbg;-><init>(Lcom/google/android/gms/internal/zzbbn;Lcom/google/android/gms/internal/zzbca;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzbbn;Lcom/google/android/gms/internal/zzbca;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbg;->zzbJy:Lcom/google/android/gms/internal/zzbbn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbbg;->zzbJx:Lcom/google/android/gms/internal/zzbca;

    return-void
.end method

.method public static zzce(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbbm;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzbbg;->zzbEI:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzbbg;->zzbJw:Lcom/google/android/gms/internal/zzbbg;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbbg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbbg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbbg;->zzbJw:Lcom/google/android/gms/internal/zzbbg;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzbbg;->zzbJw:Lcom/google/android/gms/internal/zzbbg;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dispatch()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzbcg;->zzSr()Lcom/google/android/gms/internal/zzbcg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbcg;->dispatch()V

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzbbg;->zzbJz:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Unsupport http method %s. Drop the hit."

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbbz;->zzSg()Lcom/google/android/gms/internal/zzbbz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbbz;->isPreview()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbg;->zzbJx:Lcom/google/android/gms/internal/zzbca;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbca;->zzpV()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Too many hits sent too quickly (rate throttled)."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbg;->zzbJy:Lcom/google/android/gms/internal/zzbbn;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbbn;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    move v0, v6

    goto :goto_0
.end method

.method public zzak(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbbg;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public zzhf(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbbg;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

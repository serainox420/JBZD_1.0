.class Lcom/google/android/gms/internal/zzbbl;
.super Ljava/lang/Object;


# instance fields
.field private final zzagi:J

.field private final zzbGm:J

.field private final zzbGn:J

.field private zzbGo:Ljava/lang/String;

.field private zzbJG:Ljava/lang/String;

.field private zzbJH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzbJI:Ljava/lang/String;


# direct methods
.method constructor <init>(JJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbbl;->zzbGm:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzbbl;->zzagi:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzbbl;->zzbGn:J

    return-void
.end method


# virtual methods
.method zzQN()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbbl;->zzbGm:J

    return-wide v0
.end method

.method zzQO()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbbl;->zzbGn:J

    return-wide v0
.end method

.method zzQP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbl;->zzbGo:Ljava/lang/String;

    return-object v0
.end method

.method zzRY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbl;->zzbJG:Ljava/lang/String;

    return-object v0
.end method

.method zzRZ()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbl;->zzbJH:Ljava/util/Map;

    return-object v0
.end method

.method zzSa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbl;->zzbJI:Ljava/lang/String;

    return-object v0
.end method

.method zzan(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbl;->zzbJH:Ljava/util/Map;

    return-void
.end method

.method zzhE(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbl;->zzbJG:Ljava/lang/String;

    return-void
.end method

.method zzhF(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbl;->zzbJI:Ljava/lang/String;

    return-void
.end method

.method zzhi(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbl;->zzbGo:Ljava/lang/String;

    goto :goto_0
.end method

.class public Lcom/google/android/gms/internal/zzbtr;
.super Ljava/lang/Object;


# instance fields
.field private zzcmc:Z

.field private zzcmf:J

.field private zzcml:I

.field private zzcmo:J

.field private zzcmp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbtl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzbtr;-><init>(J)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbtl;",
            ">;Z)V"
        }
    .end annotation

    const-wide/16 v6, -0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzbtr;-><init>(IJLjava/util/Map;ZJ)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/Map;ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbtl;",
            ">;ZJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbtr;->zzcml:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzbtr;->zzcmo:J

    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Lcom/google/android/gms/internal/zzbtr;->zzcmp:Ljava/util/Map;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzbtr;->zzcmc:Z

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzbtr;->zzcmf:J

    return-void

    :cond_0
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>(J)V
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbtr;-><init>(IJLjava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public getLastFetchStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbtr;->zzcml:I

    return v0
.end method

.method public isDeveloperModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbtr;->zzcmc:Z

    return v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbtl;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtr;->zzcmp:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzaI(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbtl;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbtr;->zzcmp:Ljava/util/Map;

    return-void

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public zzaV(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbtr;->zzcmo:J

    return-void
.end method

.method public zzaW(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbtr;->zzcmf:J

    return-void
.end method

.method public zzaci()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbtl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtr;->zzcmp:Ljava/util/Map;

    return-object v0
.end method

.method public zzacj()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbtr;->zzcmo:J

    return-wide v0
.end method

.method public zzack()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbtr;->zzcmf:J

    return-wide v0
.end method

.method public zzbh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbtr;->zzcmc:Z

    return-void
.end method

.method public zzjG(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtr;->zzcmp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtr;->zzcmp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public zzqJ(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzbtr;->zzcml:I

    return-void
.end method

.class public Lcom/google/android/gms/internal/zzadn$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzadi$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzadn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzd"
.end annotation


# instance fields
.field private final zzaIN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field

.field private final zzaIO:J

.field private final zzaIP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private final zzair:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "[B>;>;)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzadn$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "[B>;>;J)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzadn$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;JLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "[B>;>;J",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadn$zzd;->zzair:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzadn$zzd;->zzaIN:Ljava/util/Map;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzadn$zzd;->zzaIO:J

    iput-object p5, p0, Lcom/google/android/gms/internal/zzadn$zzd;->zzaIP:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "[B>;>;",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzadn$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;JLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadn$zzd;->zzair:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public getThrottleEndTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzadn$zzd;->zzaIO:J

    return-wide v0
.end method

.method public zzI(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadn$zzd;->zzaIN:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadn$zzd;->zzaIN:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzadn$zzd;->zzaIN:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public zza(Ljava/lang/String;[BLjava/lang/String;)[B
    .locals 1

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/zzadn$zzd;->zzI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadn$zzd;->zzaIN:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public zzzE()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadn$zzd;->zzaIP:Ljava/util/List;

    return-object v0
.end method

.method public zzzF()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadn$zzd;->zzaIN:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadn$zzd;->zzaIN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzadn$zzd;->zzaIN:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v2
.end method

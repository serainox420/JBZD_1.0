.class public Lcom/google/android/gms/internal/zzbcd;
.super Ljava/lang/Object;


# instance fields
.field private zzbKp:Lcom/google/android/gms/internal/zzbcd;

.field private zzbKq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbcd;-><init>(Lcom/google/android/gms/internal/zzbcd;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzbcd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKq:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKp:Lcom/google/android/gms/internal/zzbcd;

    return-void
.end method


# virtual methods
.method public has(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKq:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKp:Lcom/google/android/gms/internal/zzbcd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKp:Lcom/google/android/gms/internal/zzbcd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbcd;->has(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbcd;->has(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKq:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKp:Lcom/google/android/gms/internal/zzbcd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbcd;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zzSq()Lcom/google/android/gms/internal/zzbcd;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbcd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbcd;-><init>(Lcom/google/android/gms/internal/zzbcd;)V

    return-object v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKq:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKq:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKq:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbit;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKq:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKq:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKp:Lcom/google/android/gms/internal/zzbcd;

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to modify a non existent symbol: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKp:Lcom/google/android/gms/internal/zzbcd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbcd;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbit;)V

    goto :goto_0
.end method

.method public zzhM(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbit;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKq:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbit;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKp:Lcom/google/android/gms/internal/zzbcd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcd;->zzbKp:Lcom/google/android/gms/internal/zzbcd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbcd;->zzhM(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbit;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to get a non existent symbol: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

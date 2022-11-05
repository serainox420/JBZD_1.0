.class public Lcom/google/android/gms/internal/zzbqa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbpd;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static zzcgG:Lcom/google/android/gms/internal/zzbqa;


# instance fields
.field final zzcgF:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/internal/zzbpc;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbpc;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbqa;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzbqa;->$assertionsDisabled:Z

    new-instance v0, Lcom/google/android/gms/internal/zzbqa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbqa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbqa;->zzcgG:Lcom/google/android/gms/internal/zzbqa;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbqa;->zzcgF:Ljava/util/HashMap;

    return-void
.end method

.method public static zzZu()Lcom/google/android/gms/internal/zzbqa;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbqa;->zzcgG:Lcom/google/android/gms/internal/zzbqa;

    return-object v0
.end method

.method private zzj(Lcom/google/android/gms/internal/zzbpc;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbqa;->zzcgF:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqa;->zzcgF:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    move v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqa;->zzcgF:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move v0, v2

    :goto_2
    sget-boolean v2, Lcom/google/android/gms/internal/zzbqa;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpc;->zzYM()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpc;->zzYn()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->isDefault()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpc;->zzYn()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbrc;->zzN(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbpc;->zza(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbpc;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqa;->zzcgF:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_5

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqa;->zzcgF:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public zzd(Lcom/google/android/gms/internal/zzbpc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbqa;->zzj(Lcom/google/android/gms/internal/zzbpc;)V

    return-void
.end method

.method public zzi(Lcom/google/android/gms/internal/zzbpc;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqa;->zzcgF:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqa;->zzcgF:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqa;->zzcgF:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpc;->zzYn()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->isDefault()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpc;->zzYn()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbrc;->zzN(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbpc;->zza(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbpc;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqa;->zzcgF:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbqa;->zzcgF:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbpc;->zzbf(Z)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzbpc;->zza(Lcom/google/android/gms/internal/zzbpd;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzk(Lcom/google/android/gms/internal/zzbpc;)V
    .locals 6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbqa;->zzcgF:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqa;->zzcgF:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpc;->zzYn()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrc;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbpc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbpc;->zzYn()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbpc;->zzYn()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbpc;->zzYK()V

    :cond_0
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbpc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpc;->zzYK()V

    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class public Lcom/google/android/gms/internal/zzgx;
.super Lcom/google/android/gms/internal/zzhn$zza;

# interfaces
.implements Lcom/google/android/gms/internal/zzha$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private zzGA:Lcom/google/android/gms/internal/zzha;

.field private final zzGD:Ljava/lang/String;

.field private final zzGE:Landroid/support/v4/f/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzgu;",
            ">;"
        }
    .end annotation
.end field

.field private final zzGF:Landroid/support/v4/f/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/k",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzGx:Lcom/google/android/gms/internal/zzgs;

.field private zzGy:Lcom/google/android/gms/internal/zzfa;

.field private zzGz:Landroid/view/View;

.field private final zzrJ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/f/k;Landroid/support/v4/f/k;Lcom/google/android/gms/internal/zzgs;Lcom/google/android/gms/internal/zzfa;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/f/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzgu;",
            ">;",
            "Landroid/support/v4/f/k",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzgs;",
            "Lcom/google/android/gms/internal/zzfa;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhn$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzrJ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgx;->zzGD:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgx;->zzGE:Landroid/support/v4/f/k;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgx;->zzGF:Landroid/support/v4/f/k;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgx;->zzGx:Lcom/google/android/gms/internal/zzgs;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzgx;->zzGy:Lcom/google/android/gms/internal/zzfa;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzgx;->zzGz:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGA:Lcom/google/android/gms/internal/zzha;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGy:Lcom/google/android/gms/internal/zzfa;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGz:Landroid/view/View;

    return-void
.end method

.method public getAvailableAssetNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGE:Landroid/support/v4/f/k;

    invoke-virtual {v0}, Landroid/support/v4/f/k;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgx;->zzGF:Landroid/support/v4/f/k;

    invoke-virtual {v1}, Landroid/support/v4/f/k;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v4, v0, [Ljava/lang/String;

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGE:Landroid/support/v4/f/k;

    invoke-virtual {v0}, Landroid/support/v4/f/k;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGE:Landroid/support/v4/f/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/k;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v3

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGF:Landroid/support/v4/f/k;

    invoke-virtual {v0}, Landroid/support/v4/f/k;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGF:Landroid/support/v4/f/k;

    invoke-virtual {v0, v2}, Landroid/support/v4/f/k;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCustomTemplateId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGD:Ljava/lang/String;

    return-object v0
.end method

.method public performClick(Ljava/lang/String;)V
    .locals 7

    iget-object v6, p0, Lcom/google/android/gms/internal/zzgx;->zzrJ:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGA:Lcom/google/android/gms/internal/zzha;

    if-nez v0, :cond_0

    const-string v0, "Attempt to call performClick before ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->e(Ljava/lang/String;)V

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGA:Lcom/google/android/gms/internal/zzha;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzha;->zza(Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Landroid/view/View;)V

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recordImpression()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgx;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGA:Lcom/google/android/gms/internal/zzha;

    if-nez v0, :cond_0

    const-string v0, "Attempt to perform recordImpression before ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->e(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGA:Lcom/google/android/gms/internal/zzha;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzha;->zzb(Landroid/view/View;Ljava/util/Map;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzY(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGF:Landroid/support/v4/f/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzhf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGE:Landroid/support/v4/f/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzhf;

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzha;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgx;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzgx;->zzGA:Lcom/google/android/gms/internal/zzha;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzbF()Lcom/google/android/gms/internal/zzfa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGy:Lcom/google/android/gms/internal/zzfa;

    return-object v0
.end method

.method public zzfS()Ljava/lang/String;
    .locals 1

    const-string v0, "3"

    return-object v0
.end method

.method public zzfT()Lcom/google/android/gms/internal/zzgs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGx:Lcom/google/android/gms/internal/zzgs;

    return-object v0
.end method

.method public zzfU()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGz:Landroid/view/View;

    return-object v0
.end method

.method public zzfW()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx;->zzGA:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzha;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgx;->zzGA:Lcom/google/android/gms/internal/zzha;

    if-nez v1, :cond_1

    const-string v1, "Attempt to call renderVideoInMediaView before ad initialized."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqf;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgx;->zzGz:Landroid/view/View;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzgx$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzgx$1;-><init>(Lcom/google/android/gms/internal/zzgx;)V

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgx;->zzGA:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/zzha;->zza(Landroid/view/View;Lcom/google/android/gms/internal/zzgy;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

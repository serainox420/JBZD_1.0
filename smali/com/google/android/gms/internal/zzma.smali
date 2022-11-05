.class public Lcom/google/android/gms/internal/zzma;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlx$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzlx$zza",
        "<",
        "Lcom/google/android/gms/internal/zzgw;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzRc:Z

.field private final zzRd:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzma;->zzRc:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzma;->zzRd:Z

    return-void
.end method


# virtual methods
.method public synthetic zza(Lcom/google/android/gms/internal/zzlx;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzha$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzma;->zzc(Lcom/google/android/gms/internal/zzlx;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzgw;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzlx;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzgw;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v10, 0x0

    const-string v2, "images"

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzma;->zzRc:Z

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzma;->zzRd:Z

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlx;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v0

    const-string v1, "secondary_image"

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzma;->zzRc:Z

    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/google/android/gms/internal/zzlx;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzqm;

    move-result-object v4

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzlx;->zzd(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzqm;

    move-result-object v7

    const-string v1, "video"

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/zzlx;->zzc(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/zzqm;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqm;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzgu;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/internal/zzlx;->zzb(Lcom/google/android/gms/internal/zzqm;)Lcom/google/android/gms/internal/zzqw;

    move-result-object v11

    new-instance v0, Lcom/google/android/gms/internal/zzgw;

    const-string v1, "headline"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "body"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzhf;

    const-string v5, "call_to_action"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "advertiser"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzgs;

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    if-eqz v11, :cond_2

    invoke-interface {v11}, Lcom/google/android/gms/internal/zzqw;->zzlG()Lcom/google/android/gms/internal/zzrb;

    move-result-object v9

    :goto_1
    if-eqz v11, :cond_1

    invoke-interface {v11}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v10

    :cond_1
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzgw;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzhf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgs;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzfa;Landroid/view/View;)V

    return-object v0

    :cond_2
    move-object v9, v10

    goto :goto_1
.end method

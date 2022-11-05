.class public Lcom/google/android/gms/internal/zzmb;
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
        "Lcom/google/android/gms/internal/zzgx;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzRc:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzmb;->zzRc:Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzlx;Lorg/json/JSONObject;Landroid/support/v4/f/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlx;",
            "Lorg/json/JSONObject;",
            "Landroid/support/v4/f/k",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzgu;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image_value"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmb;->zzRc:Z

    invoke-virtual {p1, p2, v1, v2}, Lcom/google/android/gms/internal/zzlx;->zza(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/support/v4/f/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private zza(Lorg/json/JSONObject;Landroid/support/v4/f/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/support/v4/f/k",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "string_value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/f/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private zzc(Landroid/support/v4/f/k;)Landroid/support/v4/f/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/f/k",
            "<TK;",
            "Ljava/util/concurrent/Future",
            "<TV;>;>;)",
            "Landroid/support/v4/f/k",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    new-instance v2, Landroid/support/v4/f/k;

    invoke-direct {v2}, Landroid/support/v4/f/k;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/f/k;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/support/v4/f/k;->b(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v1}, Landroid/support/v4/f/k;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/f/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
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

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzmb;->zzd(Lcom/google/android/gms/internal/zzlx;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzgx;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/internal/zzlx;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzgx;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v2, Landroid/support/v4/f/k;

    invoke-direct {v2}, Landroid/support/v4/f/k;-><init>()V

    new-instance v3, Landroid/support/v4/f/k;

    invoke-direct {v3}, Landroid/support/v4/f/k;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzlx;->zzd(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzqm;

    move-result-object v4

    const-string v0, "video"

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/zzlx;->zzc(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/zzqm;

    move-result-object v5

    const-string v0, "custom_assets"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v8, "type"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "string"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/internal/zzmb;->zza(Lorg/json/JSONObject;Landroid/support/v4/f/k;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v9, "image"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/zzmb;->zza(Lcom/google/android/gms/internal/zzlx;Lorg/json/JSONObject;Landroid/support/v4/f/k;)V

    goto :goto_1

    :cond_1
    const-string v9, "Unknown custom asset type: "

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v9, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-static {v5}, Lcom/google/android/gms/internal/zzlx;->zzb(Lcom/google/android/gms/internal/zzqm;)Lcom/google/android/gms/internal/zzqw;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/zzgx;

    const-string v1, "custom_template_id"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzmb;->zzc(Landroid/support/v4/f/k;)Landroid/support/v4/f/k;

    move-result-object v2

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzgs;

    if-eqz v7, :cond_5

    invoke-interface {v7}, Lcom/google/android/gms/internal/zzqw;->zzlG()Lcom/google/android/gms/internal/zzrb;

    move-result-object v5

    :goto_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v6

    :cond_4
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzgx;-><init>(Ljava/lang/String;Landroid/support/v4/f/k;Landroid/support/v4/f/k;Lcom/google/android/gms/internal/zzgs;Lcom/google/android/gms/internal/zzfa;Landroid/view/View;)V

    return-object v0

    :cond_5
    move-object v5, v6

    goto :goto_3
.end method

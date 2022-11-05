.class final Lcom/google/android/gms/internal/zzic$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzid;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqw;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "URL missing from click GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->zzlx()Lcom/google/android/gms/internal/zzaw;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzaw;->zzc(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/gms/internal/zzaw;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzax; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzow;->zzjU()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "fbs_aeid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzow;->zzF(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v2

    const-string v3, "fbs_aeid"

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/internal/zzpo;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/zzow;->zzf(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzpy;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->zzly()Lcom/google/android/gms/internal/zzqh;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzpy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzpj;->zziP()Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v2, "Unable to append parameter to URL: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

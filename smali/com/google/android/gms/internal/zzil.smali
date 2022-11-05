.class public final Lcom/google/android/gms/internal/zzil;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzid;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzil$zza;
    }
.end annotation


# instance fields
.field private final zzIo:Lcom/google/android/gms/ads/internal/zzf;

.field private final zzIp:Lcom/google/android/gms/internal/zzkr;

.field private final zzIr:Lcom/google/android/gms/internal/zzif;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzkr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzil;->zzIr:Lcom/google/android/gms/internal/zzif;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzil;->zzIo:Lcom/google/android/gms/ads/internal/zzf;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzil;->zzIp:Lcom/google/android/gms/internal/zzkr;

    return-void
.end method

.method private static zzd(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "1"

    const-string v1, "custom_close"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static zze(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "o"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpp;->zzkR()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v1, "l"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpp;->zzkQ()I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v1, "c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpp;->zzkS()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static zzf(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V
    .locals 3
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

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzqw;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "u"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Destination url cannot be empty."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzil$zza;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzil$zza;-><init>(Lcom/google/android/gms/internal/zzqw;)V

    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/zzil$zza;->zza(Landroid/content/Context;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-direct {v2, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private zzr(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzil;->zzIp:Lcom/google/android/gms/internal/zzkr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzil;->zzIp:Lcom/google/android/gms/internal/zzkr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzkr;->zzs(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V
    .locals 9
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

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "a"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "Action missing from an open GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzil;->zzIo:Lcom/google/android/gms/ads/internal/zzf;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzil;->zzIo:Lcom/google/android/gms/ads/internal/zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzf;->zzcd()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzil;->zzIo:Lcom/google/android/gms/ads/internal/zzf;

    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/zzf;->zzx(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v8

    const-string v1, "expand"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->zzlz()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Cannot expand WebView that is already expanded."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzil;->zzr(Z)V

    invoke-static {p2}, Lcom/google/android/gms/internal/zzil;->zzd(Ljava/util/Map;)Z

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzil;->zze(Ljava/util/Map;)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lcom/google/android/gms/internal/zzqx;->zza(ZI)V

    goto :goto_0

    :cond_4
    const-string v1, "webapp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzil;->zzr(Z)V

    if-eqz v0, :cond_5

    invoke-static {p2}, Lcom/google/android/gms/internal/zzil;->zzd(Ljava/util/Map;)Z

    move-result v1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzil;->zze(Ljava/util/Map;)I

    move-result v2

    invoke-virtual {v8, v1, v2, v0}, Lcom/google/android/gms/internal/zzqx;->zza(ZILjava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {p2}, Lcom/google/android/gms/internal/zzil;->zzd(Ljava/util/Map;)Z

    move-result v2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzil;->zze(Ljava/util/Map;)I

    move-result v3

    const-string v0, "html"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "baseurl"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v2, v3, v0, v1}, Lcom/google/android/gms/internal/zzqx;->zza(ZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v1, "in_app_purchase"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "product_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "report_urls"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzil;->zzIr:Lcom/google/android/gms/internal/zzif;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzil;->zzIr:Lcom/google/android/gms/internal/zzif;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/zzif;->zza(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzil;->zzIr:Lcom/google/android/gms/internal/zzif;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzif;->zza(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v1, "true"

    const-string v0, "system_browser"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzil;->zzr(Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzil;->zzf(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzil;->zzr(Z)V

    const-string v0, "intent_url"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "u"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/google/android/gms/internal/zzpo;->zza(Lcom/google/android/gms/internal/zzqw;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_a
    if-eqz v3, :cond_f

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-direct {v0, v3}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Error parsing the url: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    move-object v3, v2

    goto :goto_1

    :cond_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v4

    const-string v5, "Error parsing the uri: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    move-object v0, v2

    goto :goto_2

    :cond_e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzpo;->zza(Lcom/google/android/gms/internal/zzqw;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzc;

    const-string v1, "i"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "m"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "p"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "c"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "f"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "e"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    goto/16 :goto_0

    :cond_10
    move-object v2, v1

    goto :goto_5
.end method

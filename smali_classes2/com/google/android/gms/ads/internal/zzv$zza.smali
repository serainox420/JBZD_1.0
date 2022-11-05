.class Lcom/google/android/gms/ads/internal/zzv$zza;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzuy:Lcom/google/android/gms/ads/internal/zzv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/zzv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/ads/internal/zzv$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzv$zza;-><init>(Lcom/google/android/gms/ads/internal/zzv;)V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zzv$zza;->zza([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zzv$zza;->zzD(Ljava/lang/String;)V

    return-void
.end method

.method protected zzD(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzv;->zzf(Lcom/google/android/gms/ads/internal/zzv;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzv;->zzf(Lcom/google/android/gms/ads/internal/zzv;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected varargs zza([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzv;->zze(Lcom/google/android/gms/ads/internal/zzv;)Ljava/util/concurrent/Future;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzET:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzck;

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/zzv;->zza(Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzck;)Lcom/google/android/gms/internal/zzck;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv;->zzcA()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "Failed to load ad data"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "Timed out waiting for ad data"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1
.end method

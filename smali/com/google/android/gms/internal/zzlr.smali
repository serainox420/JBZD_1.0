.class public Lcom/google/android/gms/internal/zzlr;
.super Lcom/google/android/gms/internal/zzlo;

# interfaces
.implements Lcom/google/android/gms/internal/zzqx$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzlq$zza;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzlo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzlq$zza;)V

    return-void
.end method


# virtual methods
.method protected zziO()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlr;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget v0, v0, Lcom/google/android/gms/internal/zzmn;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlr;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/internal/zzqx$zza;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlr;->zziQ()V

    const-string v0, "Loading HTML in WebView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlr;->zzIs:Lcom/google/android/gms/internal/zzqw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlr;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmn;->zzNJ:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlr;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->body:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzqw;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected zziQ()V
    .locals 0

    return-void
.end method

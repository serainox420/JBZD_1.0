.class public Lcom/google/android/gms/internal/zzjh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzjf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzIs:Lcom/google/android/gms/internal/zzqw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/ads/internal/zze;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcN()Lcom/google/android/gms/internal/zzqy;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzeg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzeg;-><init>()V

    move-object v1, p1

    move v4, v3

    move-object v5, p3

    move-object v6, p2

    move-object v8, v7

    move-object v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/zzqy;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;ZZLcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/ads/internal/zzu;Lcom/google/android/gms/ads/internal/zze;)Lcom/google/android/gms/internal/zzqw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjh;->zzIs:Lcom/google/android/gms/internal/zzqw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjh;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqe;->zzlj()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzjh;)Lcom/google/android/gms/internal/zzqw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjh;->zzIs:Lcom/google/android/gms/internal/zzqw;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjh;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->destroy()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/internal/zzhz;Lcom/google/android/gms/ads/internal/overlay/zzq;ZLcom/google/android/gms/internal/zzif;Lcom/google/android/gms/internal/zzih;Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzkx;)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjh;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/ads/internal/zzf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjh;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/ads/internal/zzf;-><init>(Landroid/content/Context;Z)V

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/internal/zzhz;Lcom/google/android/gms/ads/internal/overlay/zzq;ZLcom/google/android/gms/internal/zzif;Lcom/google/android/gms/internal/zzih;Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzkx;Lcom/google/android/gms/internal/zzot;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzjf$zza;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjh;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzjh$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzjh$6;-><init>(Lcom/google/android/gms/internal/zzjh;Lcom/google/android/gms/internal/zzjf$zza;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/internal/zzqx$zza;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjh;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzjh$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzjh$1;-><init>(Lcom/google/android/gms/internal/zzjh;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzjh;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzam(Ljava/lang/String;)V
    .locals 3

    const-string v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzjh$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzjh$3;-><init>(Lcom/google/android/gms/internal/zzjh;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzjh;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzan(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzjh$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzjh$5;-><init>(Lcom/google/android/gms/internal/zzjh;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzjh;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzao(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzjh$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzjh$4;-><init>(Lcom/google/android/gms/internal/zzjh;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzjh;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjh;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzqx;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjh;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzqw;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zzgM()Lcom/google/android/gms/internal/zzjk;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzjl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzjl;-><init>(Lcom/google/android/gms/internal/zzjj;)V

    return-object v0
.end method

.method public zzj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzjh$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzjh$2;-><init>(Lcom/google/android/gms/internal/zzjh;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzjh;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

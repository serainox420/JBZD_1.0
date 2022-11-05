.class public Lcom/google/android/gms/internal/zzkv;
.super Lcom/google/android/gms/internal/zzkw;

# interfaces
.implements Lcom/google/android/gms/internal/zzid;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzIs:Lcom/google/android/gms/internal/zzqw;

.field private zzMA:I

.field zzMB:I

.field zzMC:I

.field zzMD:I

.field zzME:I

.field private final zzMw:Lcom/google/android/gms/internal/zzfv;

.field private zzMx:F

.field zzMy:I

.field zzMz:I

.field zzwY:Landroid/util/DisplayMetrics;

.field private final zzwo:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqw;Landroid/content/Context;Lcom/google/android/gms/internal/zzfv;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzkw;-><init>(Lcom/google/android/gms/internal/zzqw;)V

    iput v0, p0, Lcom/google/android/gms/internal/zzkv;->zzMy:I

    iput v0, p0, Lcom/google/android/gms/internal/zzkv;->zzMz:I

    iput v0, p0, Lcom/google/android/gms/internal/zzkv;->zzMB:I

    iput v0, p0, Lcom/google/android/gms/internal/zzkv;->zzMC:I

    iput v0, p0, Lcom/google/android/gms/internal/zzkv;->zzMD:I

    iput v0, p0, Lcom/google/android/gms/internal/zzkv;->zzME:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzkv;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzkv;->zzMw:Lcom/google/android/gms/internal/zzfv;

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkv;->zzwo:Landroid/view/WindowManager;

    return-void
.end method

.method private zzhp()V
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkv;->zzwY:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv;->zzwo:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkv;->zzwY:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkv;->zzwY:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/zzkv;->zzMx:F

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzkv;->zzMA:I

    return-void
.end method

.method private zzhu()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzqw;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkv;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzqe;->zzc(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzkv;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzqe;->zzc(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzkv;->zzf(II)V

    return-void
.end method

.method private zzhx()Lcom/google/android/gms/internal/zzku;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzku$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzku$zza;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkv;->zzMw:Lcom/google/android/gms/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfv;->zzfl()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzku$zza;->zzu(Z)Lcom/google/android/gms/internal/zzku$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkv;->zzMw:Lcom/google/android/gms/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfv;->zzfm()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzku$zza;->zzt(Z)Lcom/google/android/gms/internal/zzku$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkv;->zzMw:Lcom/google/android/gms/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfv;->zzfp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzku$zza;->zzv(Z)Lcom/google/android/gms/internal/zzku$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkv;->zzMw:Lcom/google/android/gms/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfv;->zzfn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzku$zza;->zzw(Z)Lcom/google/android/gms/internal/zzku$zza;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzku$zza;->zzx(Z)Lcom/google/android/gms/internal/zzku$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzku$zza;->zzho()Lcom/google/android/gms/internal/zzku;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V
    .locals 0
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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkv;->zzhs()V

    return-void
.end method

.method public zzf(II)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzpo;->zzk(Landroid/app/Activity;)[I

    move-result-object v0

    aget v0, v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzkv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzbC()Lcom/google/android/gms/internal/zzeg;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzbC()Lcom/google/android/gms/internal/zzeg;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzeg;->zzzz:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkv;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzkv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzqw;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzqe;->zzc(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzkv;->zzMD:I

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkv;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzkv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzqw;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzqe;->zzc(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzkv;->zzME:I

    :cond_1
    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/zzkv;->zzMD:I

    iget v2, p0, Lcom/google/android/gms/internal/zzkv;->zzME:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzkv;->zzc(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzqx;->zze(II)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method zzhq()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkv;->zzwY:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkv;->zzwY:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqe;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzkv;->zzMy:I

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkv;->zzwY:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkv;->zzwY:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqe;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzkv;->zzMz:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlr()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzkv;->zzMy:I

    iput v0, p0, Lcom/google/android/gms/internal/zzkv;->zzMB:I

    iget v0, p0, Lcom/google/android/gms/internal/zzkv;->zzMz:I

    iput v0, p0, Lcom/google/android/gms/internal/zzkv;->zzMC:I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzpo;->zzh(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkv;->zzwY:Landroid/util/DisplayMetrics;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzqe;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzkv;->zzMB:I

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkv;->zzwY:Landroid/util/DisplayMetrics;

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzqe;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzkv;->zzMC:I

    goto :goto_0
.end method

.method zzhr()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzbC()Lcom/google/android/gms/internal/zzeg;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzeg;->zzzz:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzkv;->zzMy:I

    iput v0, p0, Lcom/google/android/gms/internal/zzkv;->zzMD:I

    iget v0, p0, Lcom/google/android/gms/internal/zzkv;->zzMz:I

    iput v0, p0, Lcom/google/android/gms/internal/zzkv;->zzME:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0, v1, v1}, Lcom/google/android/gms/internal/zzqw;->measure(II)V

    goto :goto_0
.end method

.method public zzhs()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkv;->zzhp()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkv;->zzhq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkv;->zzhr()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkv;->zzhv()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkv;->zzhw()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkv;->zzhu()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkv;->zzht()V

    return-void
.end method

.method zzht()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzak(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Dispatching Ready Event."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbg(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzly()Lcom/google/android/gms/internal/zzqh;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzkv;->zzaA(Ljava/lang/String;)V

    return-void
.end method

.method zzhv()V
    .locals 7

    iget v1, p0, Lcom/google/android/gms/internal/zzkv;->zzMy:I

    iget v2, p0, Lcom/google/android/gms/internal/zzkv;->zzMz:I

    iget v3, p0, Lcom/google/android/gms/internal/zzkv;->zzMB:I

    iget v4, p0, Lcom/google/android/gms/internal/zzkv;->zzMC:I

    iget v5, p0, Lcom/google/android/gms/internal/zzkv;->zzMx:F

    iget v6, p0, Lcom/google/android/gms/internal/zzkv;->zzMA:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzkv;->zza(IIIIFI)V

    return-void
.end method

.method zzhw()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkv;->zzhx()Lcom/google/android/gms/internal/zzku;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    const-string v2, "onDeviceFeaturesReceived"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzku;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzqw;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

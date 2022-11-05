.class public Lcom/google/android/gms/internal/zzly;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzGJ:Lcom/google/android/gms/ads/internal/zzs;

.field private final zzGP:Lcom/google/android/gms/internal/zzaw;

.field private final zzPR:Lcom/google/android/gms/internal/zzpb$zza;

.field private zzQV:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzQW:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final zzrJ:Ljava/lang/Object;

.field private final zzsn:Lcom/google/android/gms/internal/zzgl;

.field private zzvR:I

.field private zzvS:I

.field private zzvT:Lcom/google/android/gms/internal/zzpz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/ads/internal/zzs;)V
    .locals 4

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzly;->zzrJ:Ljava/lang/Object;

    iput v1, p0, Lcom/google/android/gms/internal/zzly;->zzvR:I

    iput v1, p0, Lcom/google/android/gms/internal/zzly;->zzvS:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzly;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzly;->zzGP:Lcom/google/android/gms/internal/zzaw;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzly;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzly;->zzsn:Lcom/google/android/gms/internal/zzgl;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzly;->zzGJ:Lcom/google/android/gms/ads/internal/zzs;

    new-instance v0, Lcom/google/android/gms/internal/zzpz;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzpz;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzly;->zzvT:Lcom/google/android/gms/internal/zzpz;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzly;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzly;->zza(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    return-object v0
.end method

.method private zza(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzqw;",
            ">;)",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzly;->zzQV:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzly$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzly$3;-><init>(Lcom/google/android/gms/internal/zzly;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzly;->zzQV:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzly;->zzQV:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzly;)Lcom/google/android/gms/ads/internal/zzs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzly;->zzGJ:Lcom/google/android/gms/ads/internal/zzs;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzly;Lcom/google/android/gms/internal/zzqw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzly;->zzj(Lcom/google/android/gms/internal/zzqw;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzly;Ljava/lang/ref/WeakReference;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzly;->zza(Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method

.method private zza(Ljava/lang/ref/WeakReference;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzqw;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqw;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzly;->zzvT:Lcom/google/android/gms/internal/zzpz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzpz;->tryAcquire()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzly;->mContext:Landroid/content/Context;

    aget v6, v4, v2

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/zzqe;->zzc(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/zzly;->mContext:Landroid/content/Context;

    aget v4, v4, v1

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/zzqe;->zzc(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzly;->zzrJ:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget v6, p0, Lcom/google/android/gms/internal/zzly;->zzvR:I

    if-ne v6, v3, :cond_3

    iget v6, p0, Lcom/google/android/gms/internal/zzly;->zzvS:I

    if-eq v6, v4, :cond_4

    :cond_3
    iput v3, p0, Lcom/google/android/gms/internal/zzly;->zzvR:I

    iput v4, p0, Lcom/google/android/gms/internal/zzly;->zzvS:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/zzly;->zzvR:I

    iget v6, p0, Lcom/google/android/gms/internal/zzly;->zzvS:I

    if-nez p2, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v6, v0}, Lcom/google/android/gms/internal/zzqx;->zza(IIZ)V

    :cond_4
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzly;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzly;->zzb(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    return-object v0
.end method

.method private zzb(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzqw;",
            ">;)",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzly;->zzQW:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzly$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzly$4;-><init>(Lcom/google/android/gms/internal/zzly;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzly;->zzQW:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzly;->zzQW:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object v0
.end method

.method private zzj(Lcom/google/android/gms/internal/zzqw;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    const-string v1, "/video"

    sget-object v2, Lcom/google/android/gms/internal/zzic;->zzHQ:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v1, "/videoMeta"

    sget-object v2, Lcom/google/android/gms/internal/zzic;->zzHR:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v1, "/precache"

    sget-object v2, Lcom/google/android/gms/internal/zzic;->zzHT:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v1, "/delayPageLoaded"

    sget-object v2, Lcom/google/android/gms/internal/zzic;->zzHW:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v1, "/instrument"

    sget-object v2, Lcom/google/android/gms/internal/zzic;->zzHU:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v1, "/log"

    sget-object v2, Lcom/google/android/gms/internal/zzic;->zzHL:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v1, "/videoClicked"

    sget-object v2, Lcom/google/android/gms/internal/zzic;->zzHM:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v1, "/trackActiveViewUnit"

    new-instance v2, Lcom/google/android/gms/internal/zzly$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzly$2;-><init>(Lcom/google/android/gms/internal/zzly;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    return-void
.end method


# virtual methods
.method public zze(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzqm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/zzqm",
            "<",
            "Lcom/google/android/gms/internal/zzqw;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzqj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqj;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzly$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/zzly$1;-><init>(Lcom/google/android/gms/internal/zzly;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzqj;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzpo;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method zzjj()Lcom/google/android/gms/internal/zzqw;
    .locals 10

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcN()Lcom/google/android/gms/internal/zzqy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzly;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzly;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeg;->zzk(Landroid/content/Context;)Lcom/google/android/gms/internal/zzeg;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzly;->zzGP:Lcom/google/android/gms/internal/zzaw;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzly;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v6, v4, Lcom/google/android/gms/internal/zzmk;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzly;->zzsn:Lcom/google/android/gms/internal/zzgl;

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzly;->zzGJ:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/zzs;->zzby()Lcom/google/android/gms/ads/internal/zze;

    move-result-object v9

    move v4, v3

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/zzqy;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;ZZLcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/ads/internal/zzu;Lcom/google/android/gms/ads/internal/zze;)Lcom/google/android/gms/internal/zzqw;

    move-result-object v0

    return-object v0
.end method

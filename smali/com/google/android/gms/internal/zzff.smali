.class public Lcom/google/android/gms/internal/zzff;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzAj:Lcom/google/android/gms/internal/zzjz;

.field private final zzAk:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzAl:Lcom/google/android/gms/ads/VideoController;

.field final zzAm:Lcom/google/android/gms/internal/zzen;

.field private zzAn:Lcom/google/android/gms/ads/Correlator;

.field private zzAo:Lcom/google/android/gms/internal/zzet;

.field private zzAp:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

.field private zzAq:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

.field private zzAr:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

.field private zzAs:Ljava/lang/String;

.field private zzAt:Landroid/view/ViewGroup;

.field private zzAu:I

.field private zzrX:Lcom/google/android/gms/ads/VideoOptions;

.field private final zzrw:Lcom/google/android/gms/internal/zzef;

.field private zzsS:Z

.field private zzts:Ljava/lang/String;

.field private zzyR:Lcom/google/android/gms/internal/zzdx;

.field private zzyS:Lcom/google/android/gms/ads/AdListener;

.field private zzzE:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private zzzF:[Lcom/google/android/gms/ads/AdSize;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzef;->zzeD()Lcom/google/android/gms/internal/zzef;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzff;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/zzef;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzef;->zzeD()Lcom/google/android/gms/internal/zzef;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzff;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/zzef;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/zzef;->zzeD()Lcom/google/android/gms/internal/zzef;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzff;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/zzef;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/zzef;->zzeD()Lcom/google/android/gms/internal/zzef;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzff;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/zzef;I)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/zzef;I)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzff;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/zzef;Lcom/google/android/gms/internal/zzet;I)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/zzef;Lcom/google/android/gms/internal/zzet;I)V
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzjz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzjz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAj:Lcom/google/android/gms/internal/zzjz;

    new-instance v0, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v0}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAl:Lcom/google/android/gms/ads/VideoController;

    new-instance v0, Lcom/google/android/gms/internal/zzff$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzff$1;-><init>(Lcom/google/android/gms/internal/zzff;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAm:Lcom/google/android/gms/internal/zzen;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzff;->zzAt:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzff;->zzrw:Lcom/google/android/gms/internal/zzef;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAk:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p6, p0, Lcom/google/android/gms/internal/zzff;->zzAu:I

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzej;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/zzej;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzej;->zzm(Z)[Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzff;->zzzF:[Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzej;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzts:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzff;->zzzF:[Lcom/google/android/gms/ads/AdSize;

    aget-object v2, v2, v3

    iget v3, p0, Lcom/google/android/gms/internal/zzff;->zzAu:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzff;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/zzeg;

    move-result-object v1

    const-string v2, "Ads by Google"

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzqe;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzeg;

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/internal/zzeg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v3, v1, v0}, Lcom/google/android/gms/internal/zzqe;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzff;)Lcom/google/android/gms/ads/VideoController;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAl:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/zzeg;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzeg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzeg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/zzff;->zzz(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeg;->zzl(Z)V

    return-object v0
.end method

.method private static zza(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/zzeg;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzeg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzeg;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/zzff;->zzz(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeg;->zzl(Z)V

    return-object v0
.end method

.method private zzfh()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzet;->zzbB()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzAt:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get an ad frame."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static zzz(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzet;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to destroy AdView."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzyS:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/AdSize;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzet;->zzbC()Lcom/google/android/gms/internal/zzeg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeg;->zzeF()Lcom/google/android/gms/ads/AdSize;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the current AdSize."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzzF:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzzF:[Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdSizes()[Lcom/google/android/gms/ads/AdSize;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzzF:[Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzts:Ljava/lang/String;

    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzzE:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAp:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzet;->getMediationAdapterClassName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the mediation adapter class name."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAq:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-object v0
.end method

.method public getVideoController()Lcom/google/android/gms/ads/VideoController;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAl:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzrX:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method

.method public isLoading()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzet;->isLoading()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to check if ad is loading."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzet;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call pause."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public recordManualImpression()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAk:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzet;->zzbE()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to record impression."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzet;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call resume."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzff;->zzyS:Lcom/google/android/gms/ads/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAm:Lcom/google/android/gms/internal/zzen;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzen;->zza(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public varargs setAdSizes([Lcom/google/android/gms/ads/AdSize;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzzF:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzff;->zza([Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzts:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzff;->zzts:Ljava/lang/String;

    return-void
.end method

.method public setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzff;->zzzE:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzei;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzei;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzev;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setCorrelator(Lcom/google/android/gms/ads/Correlator;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzff;->zzAn:Lcom/google/android/gms/ads/Correlator;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAn:Lcom/google/android/gms/ads/Correlator;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzex;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAn:Lcom/google/android/gms/ads/Correlator;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/Correlator;->zzbq()Lcom/google/android/gms/internal/zzem;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set correlator."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAr:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Play store purchase parameter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzff;->zzAp:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzlj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzlj;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the InAppPurchaseListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setManualImpressionsEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzff;->zzsS:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzff;->zzsS:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzet;->setManualImpressionsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set manual impressions."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzff;->zzAq:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzgq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzgq;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzgp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAp:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InAppPurchaseListener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzff;->zzAr:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzff;->zzAs:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzln;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzln;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzli;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the play store purchase parameter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzff;->zzrX:Lcom/google/android/gms/ads/VideoOptions;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzft;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzft;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzft;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set video options."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzdx;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzff;->zzyR:Lcom/google/android/gms/internal/zzdx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzdy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzdy;-><init>(Lcom/google/android/gms/internal/zzdx;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzeo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AdClickListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzfe;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzff;->zzfi()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzrw:Lcom/google/android/gms/internal/zzef;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzff;->zzAt:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfe;)Lcom/google/android/gms/internal/zzec;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzet;->zzb(Lcom/google/android/gms/internal/zzec;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAj:Lcom/google/android/gms/internal/zzjz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfe;->zzfd()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzjz;->zzi(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs zza([Lcom/google/android/gms/ads/AdSize;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzff;->zzzF:[Lcom/google/android/gms/ads/AdSize;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzAt:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzff;->zzzF:[Lcom/google/android/gms/ads/AdSize;

    iget v3, p0, Lcom/google/android/gms/internal/zzff;->zzAu:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzff;->zza(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/zzeg;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzeg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAt:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the ad size."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzeg;)Z
    .locals 2

    const-string v0, "search_v2"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzeg;->zzzy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public zzbs()Lcom/google/android/gms/internal/zzfa;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzet;->zzbF()Lcom/google/android/gms/internal/zzfa;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to retrieve VideoController."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method zzfi()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzzF:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzts:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzff;->zzfj()Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    new-instance v1, Lcom/google/android/gms/internal/zzdz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzff;->zzAm:Lcom/google/android/gms/internal/zzen;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzdz;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzep;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzyR:Lcom/google/android/gms/internal/zzdx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    new-instance v1, Lcom/google/android/gms/internal/zzdy;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzff;->zzyR:Lcom/google/android/gms/internal/zzdx;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzdy;-><init>(Lcom/google/android/gms/internal/zzdx;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzeo;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzzE:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    new-instance v1, Lcom/google/android/gms/internal/zzei;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzff;->zzzE:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzei;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzev;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAp:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    new-instance v1, Lcom/google/android/gms/internal/zzlj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzff;->zzAp:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzlj;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzle;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAr:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    new-instance v1, Lcom/google/android/gms/internal/zzln;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzff;->zzAr:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzln;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzff;->zzAs:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzli;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAq:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    new-instance v1, Lcom/google/android/gms/internal/zzgq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzff;->zzAq:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzgq;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzgp;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAn:Lcom/google/android/gms/ads/Correlator;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzAn:Lcom/google/android/gms/ads/Correlator;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/Correlator;->zzbq()Lcom/google/android/gms/internal/zzem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzex;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzrX:Lcom/google/android/gms/ads/VideoOptions;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    new-instance v1, Lcom/google/android/gms/internal/zzft;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzff;->zzrX:Lcom/google/android/gms/ads/VideoOptions;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzft;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzft;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAo:Lcom/google/android/gms/internal/zzet;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzff;->zzsS:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzet;->setManualImpressionsEnabled(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzff;->zzfh()V

    return-void
.end method

.method protected zzfj()Lcom/google/android/gms/internal/zzet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzAt:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzzF:[Lcom/google/android/gms/ads/AdSize;

    iget v2, p0, Lcom/google/android/gms/internal/zzff;->zzAu:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzff;->zza(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/zzeg;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzff;->zzb(Lcom/google/android/gms/internal/zzeg;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeU()Lcom/google/android/gms/internal/zzek;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzff;->zzts:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/zzek;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;)Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeU()Lcom/google/android/gms/internal/zzek;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzff;->zzts:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzff;->zzAj:Lcom/google/android/gms/internal/zzjz;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/google/android/gms/internal/zzek;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;)Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    goto :goto_0
.end method

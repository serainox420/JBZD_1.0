.class Lcom/google/android/gms/internal/zzra;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/zzqw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzra$zza;
    }
.end annotation


# instance fields
.field private final zzGP:Lcom/google/android/gms/internal/zzaw;

.field private zzMB:I

.field private zzMC:I

.field private zzMy:I

.field private zzMz:I

.field private zzOV:Ljava/lang/String;

.field private zzOW:Lcom/google/android/gms/internal/zzgj;

.field private zzWO:Ljava/lang/Boolean;

.field private final zzZZ:Lcom/google/android/gms/internal/zzra$zza;

.field private final zzaaa:Lcom/google/android/gms/ads/internal/zzu;

.field private zzaab:Lcom/google/android/gms/internal/zzqx;

.field private zzaac:Lcom/google/android/gms/ads/internal/overlay/zze;

.field private zzaad:Z

.field private zzaae:Z

.field private zzaaf:Z

.field private zzaag:Z

.field private zzaah:I

.field private zzaai:Z

.field zzaaj:Z

.field private zzaak:Lcom/google/android/gms/internal/zzrb;

.field private zzaal:Z

.field private zzaam:Z

.field private zzaan:Lcom/google/android/gms/internal/zzgy;

.field private zzaao:I

.field private zzaap:I

.field private zzaaq:Lcom/google/android/gms/internal/zzgj;

.field private zzaar:Lcom/google/android/gms/internal/zzgj;

.field private zzaas:Lcom/google/android/gms/internal/zzgk;

.field private zzaat:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzaau:Lcom/google/android/gms/ads/internal/overlay/zze;

.field private zzaav:Z

.field private zzaaw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzis;",
            ">;"
        }
    .end annotation
.end field

.field private final zzrJ:Ljava/lang/Object;

.field private final zzsv:Lcom/google/android/gms/ads/internal/zze;

.field private final zztt:Lcom/google/android/gms/internal/zzqh;

.field private zzus:Lcom/google/android/gms/internal/zzeg;

.field private zzvY:Lcom/google/android/gms/internal/zzqd;

.field private final zzwo:Landroid/view/WindowManager;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzra$zza;Lcom/google/android/gms/internal/zzeg;ZZLcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/ads/internal/zzu;Lcom/google/android/gms/ads/internal/zze;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzra;->zzaai:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzra;->zzaaj:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzOV:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/zzra;->zzMz:I

    iput v1, p0, Lcom/google/android/gms/internal/zzra;->zzMy:I

    iput v1, p0, Lcom/google/android/gms/internal/zzra;->zzMB:I

    iput v1, p0, Lcom/google/android/gms/internal/zzra;->zzMC:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzra;->zzZZ:Lcom/google/android/gms/internal/zzra$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzra;->zzus:Lcom/google/android/gms/internal/zzeg;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzra;->zzaaf:Z

    iput v1, p0, Lcom/google/android/gms/internal/zzra;->zzaah:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzra;->zzGP:Lcom/google/android/gms/internal/zzaw;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzra;->zztt:Lcom/google/android/gms/internal/zzqh;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzra;->zzaaa:Lcom/google/android/gms/ads/internal/zzu;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzra;->zzsv:Lcom/google/android/gms/ads/internal/zze;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzwo:Landroid/view/WindowManager;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzra;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v1

    iget-object v2, p6, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0}, Lcom/google/android/gms/internal/zzpo;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzpp;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/zzra;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzra;->zzmg()V

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzj()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzrc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzrc;-><init>(Lcom/google/android/gms/internal/zzqw;)V

    const-string v1, "googleAdsJsInterface"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzra;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzze()Z

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzra;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzra;->removeJavascriptInterface(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzqd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzZZ:Lcom/google/android/gms/internal/zzra$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzra$zza;->zzlr()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p0, v2}, Lcom/google/android/gms/internal/zzqd;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzvY:Lcom/google/android/gms/internal/zzqd;

    invoke-direct {p0, p7}, Lcom/google/android/gms/internal/zzra;->zzd(Lcom/google/android/gms/internal/zzgl;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpp;->zzW(Landroid/content/Context;)V

    return-void
.end method

.method private zzP(Z)V
    .locals 3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "isVisible"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "onAdVisibilityChanged"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzra;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzra;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzra;->zzaap:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzra;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzra;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzra;->zzaap:I

    return v0
.end method

.method static zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;ZZLcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/ads/internal/zzu;Lcom/google/android/gms/ads/internal/zze;)Lcom/google/android/gms/internal/zzra;
    .locals 10

    new-instance v1, Lcom/google/android/gms/internal/zzra$zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzra$zza;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzra;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzra;-><init>(Lcom/google/android/gms/internal/zzra$zza;Lcom/google/android/gms/internal/zzeg;ZZLcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/ads/internal/zzu;Lcom/google/android/gms/ads/internal/zze;)V

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzra;)V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private zzd(Lcom/google/android/gms/internal/zzgl;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzra;->zzmk()V

    new-instance v0, Lcom/google/android/gms/internal/zzgk;

    new-instance v1, Lcom/google/android/gms/internal/zzgl;

    const/4 v2, 0x1

    const-string v3, "make_wv"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzra;->zzus:Lcom/google/android/gms/internal/zzeg;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzeg;->zzzy:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzgl;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzgk;-><init>(Lcom/google/android/gms/internal/zzgl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaas:Lcom/google/android/gms/internal/zzgk;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaas:Lcom/google/android/gms/internal/zzgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgk;->zzfA()Lcom/google/android/gms/internal/zzgl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzgl;->zzc(Lcom/google/android/gms/internal/zzgl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaas:Lcom/google/android/gms/internal/zzgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgk;->zzfA()Lcom/google/android/gms/internal/zzgl;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgh;->zzb(Lcom/google/android/gms/internal/zzgl;)Lcom/google/android/gms/internal/zzgj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzOW:Lcom/google/android/gms/internal/zzgj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaas:Lcom/google/android/gms/internal/zzgk;

    const-string v1, "native:view_create"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzra;->zzOW:Lcom/google/android/gms/internal/zzgj;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzgk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)V

    iput-object v5, p0, Lcom/google/android/gms/internal/zzra;->zzaar:Lcom/google/android/gms/internal/zzgj;

    iput-object v5, p0, Lcom/google/android/gms/internal/zzra;->zzaaq:Lcom/google/android/gms/internal/zzgj;

    return-void
.end method

.method private zzkC()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaav:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaav:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpe;->zzkC()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zzmc()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpe;->zzkq()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzWO:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzWO:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "(function(){})()"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzra;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzra;->zza(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzra;->zza(Ljava/lang/Boolean;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private zzmd()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaas:Lcom/google/android/gms/internal/zzgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgk;->zzfA()Lcom/google/android/gms/internal/zzgl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzOW:Lcom/google/android/gms/internal/zzgj;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aeh2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzgj;[Ljava/lang/String;)Z

    return-void
.end method

.method private zzme()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaas:Lcom/google/android/gms/internal/zzgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgk;->zzfA()Lcom/google/android/gms/internal/zzgl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzOW:Lcom/google/android/gms/internal/zzgj;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aebb2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzgj;[Ljava/lang/String;)Z

    return-void
.end method

.method private zzmg()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaaf:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzus:Lcom/google/android/gms/internal/zzeg;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzeg;->zzzz:Z

    if-eqz v0, :cond_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "Enabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzra;->zzmi()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_2

    const-string v0, "Disabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzra;->zzmh()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    const-string v0, "Enabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzra;->zzmi()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private zzmh()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaag:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzpp;->zzu(Landroid/view/View;)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaag:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zzmi()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaag:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzpp;->zzt(Landroid/view/View;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaag:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zzmj()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaaw:Ljava/util/Map;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zzmk()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaas:Lcom/google/android/gms/internal/zzgk;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaas:Lcom/google/android/gms/internal/zzgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgk;->zzfA()Lcom/google/android/gms/internal/zzgl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzpe;->zzkk()Lcom/google/android/gms/internal/zzgf;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzpe;->zzkk()Lcom/google/android/gms/internal/zzgf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzgf;->zza(Lcom/google/android/gms/internal/zzgl;)Z

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzra;->zzmk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzvY:Lcom/google/android/gms/internal/zzqd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqd;->zzlf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaac:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaac:Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->close()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaac:Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaac:Lcom/google/android/gms/ads/internal/overlay/zze;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaab:Lcom/google/android/gms/internal/zzqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqx;->reset()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaae:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdj()Lcom/google/android/gms/internal/zzir;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzir;->zze(Lcom/google/android/gms/internal/zzqw;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzra;->zzmj()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaae:Z

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaab:Lcom/google/android/gms/internal/zzqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqx;->zzlS()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaae:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaab:Lcom/google/android/gms/internal/zzqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqx;->reset()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdj()Lcom/google/android/gms/internal/zzir;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzir;->zze(Lcom/google/android/gms/internal/zzqw;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzra;->zzmj()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzra;->zzkC()V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzOV:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequestedOrientation()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzra;->zzaah:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 0

    return-object p0
.end method

.method public isDestroyed()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaae:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->isDestroyed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v2

    const-string v3, "AdWebViewImpl.loadUrl"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzpe;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v2, "Could not call loadUrl. "

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzvY:Lcom/google/android/gms/internal/zzqd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqd;->onAttachedToWindow()V

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzra;->zzaal:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzqx;->zzlO()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzra;->zzaam:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqx;->zzlP()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdk()Lcom/google/android/gms/internal/zzqr;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/zzqr;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqx;->zzlQ()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdk()Lcom/google/android/gms/internal/zzqr;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/zzqr;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzra;->zzaam:Z

    :cond_3
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzra;->zzP(Z)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzvY:Lcom/google/android/gms/internal/zzqd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqd;->onDetachedFromWindow()V

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaam:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqx;->zzlO()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqx;->zzlP()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzpp;->zza(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqx;->zzlQ()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaam:Z

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzra;->zzP(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzpo;->zzb(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqx;->zzlZ()Lcom/google/android/gms/internal/zzqx$zze;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqx;->zzlZ()Lcom/google/android/gms/internal/zzqx$zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqx$zze;->zzce()V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzCK:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_4

    move v0, v2

    :goto_0
    if-eqz v0, :cond_5

    cmpl-float v0, v3, v6

    if-lez v0, :cond_0

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/zzra;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    cmpg-float v0, v3, v6

    if-gez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzra;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    cmpl-float v0, v4, v6

    if-lez v0, :cond_2

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/zzra;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    cmpg-float v0, v4, v6

    if-gez v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzra;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v1

    :goto_1
    return v0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onGlobalLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzmb()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzlt()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzhJ()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const v0, 0x7fffffff

    const/high16 v8, 0x40000000    # 2.0f

    const/16 v7, 0x8

    const/high16 v6, -0x80000000

    iget-object v4, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzra;->setMeasuredDimension(II)V

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzra;->zzaaf:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzus:Lcom/google/android/gms/internal/zzeg;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzeg;->zzzB:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzus:Lcom/google/android/gms/internal/zzeg;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzeg;->zzzC:Z

    if-eqz v1, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzEy:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzj()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    monitor-exit v4

    goto :goto_0

    :cond_4
    const-string v0, "/contentHeight"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzmf()Lcom/google/android/gms/internal/zzid;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzra;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) { height = document.body.offsetHeight;}  else if (document.documentElement) {      height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  window.googleAdsJsInterface.notify(url);  })();"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzra;->zzbm(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzZZ:Lcom/google/android/gms/internal/zzra$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzra$zza;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/zzra;->zzaap:I

    packed-switch v2, :pswitch_data_0

    iget v2, p0, Lcom/google/android/gms/internal/zzra;->zzaap:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzra;->setMeasuredDimension(II)V

    monitor-exit v4

    goto :goto_0

    :pswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzus:Lcom/google/android/gms/internal/zzeg;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzeg;->zzzz:Z

    if-eqz v1, :cond_6

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzwo:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzra;->setMeasuredDimension(II)V

    monitor-exit v4

    goto/16 :goto_0

    :cond_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-eq v2, v6, :cond_7

    if-ne v2, v8, :cond_e

    :cond_7
    move v2, v3

    :goto_2
    if-eq v5, v6, :cond_8

    if-ne v5, v8, :cond_9

    :cond_8
    move v0, v1

    :cond_9
    iget-object v5, p0, Lcom/google/android/gms/internal/zzra;->zzus:Lcom/google/android/gms/internal/zzeg;

    iget v5, v5, Lcom/google/android/gms/internal/zzeg;->widthPixels:I

    if-gt v5, v2, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzra;->zzus:Lcom/google/android/gms/internal/zzeg;

    iget v2, v2, Lcom/google/android/gms/internal/zzeg;->heightPixels:I

    if-le v2, v0, :cond_c

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzZZ:Lcom/google/android/gms/internal/zzra$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzra$zza;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lcom/google/android/gms/internal/zzra;->zzus:Lcom/google/android/gms/internal/zzeg;

    iget v2, v2, Lcom/google/android/gms/internal/zzeg;->widthPixels:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzra;->zzus:Lcom/google/android/gms/internal/zzeg;

    iget v5, v5, Lcom/google/android/gms/internal/zzeg;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v5, v5

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    const/16 v1, 0x67

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Not enough space to show ad. Needs "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dp, but only has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_b

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzra;->setVisibility(I)V

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzra;->setMeasuredDimension(II)V

    :goto_3
    monitor-exit v4

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzra;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzus:Lcom/google/android/gms/internal/zzeg;

    iget v0, v0, Lcom/google/android/gms/internal/zzeg;->widthPixels:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzus:Lcom/google/android/gms/internal/zzeg;

    iget v1, v1, Lcom/google/android/gms/internal/zzeg;->heightPixels:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzra;->setMeasuredDimension(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_e
    move v2, v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzze()Z

    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not pause webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzze()Z

    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not resume webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqx;->zzlO()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaan:Lcom/google/android/gms/internal/zzgy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaan:Lcom/google/android/gms/internal/zzgy;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzgy;->zzc(Landroid/view/MotionEvent;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzGP:Lcom/google/android/gms/internal/zzaw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzGP:Lcom/google/android/gms/internal/zzaw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaw;->zza(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzZZ:Lcom/google/android/gms/internal/zzra$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzra$zza;->setBaseContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzvY:Lcom/google/android/gms/internal/zzqd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzZZ:Lcom/google/android/gms/internal/zzra$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzra$zza;->zzlr()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqd;->zzl(Landroid/app/Activity;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaat:Ljava/lang/ref/WeakReference;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/zzra;->zzaah:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaac:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaac:Lcom/google/android/gms/ads/internal/overlay/zze;

    iget v2, p0, Lcom/google/android/gms/internal/zzra;->zzaah:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zze;->setRequestedOrientation(I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    instance-of v0, p1, Lcom/google/android/gms/internal/zzqx;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzqx;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzra;->zzaab:Lcom/google/android/gms/internal/zzqx;

    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not stop loading webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public zzK(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzra;->zzaaf:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzra;->zzmg()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzL(Z)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaac:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaac:Lcom/google/android/gms/ads/internal/overlay/zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzra;->zzaab:Lcom/google/android/gms/internal/zzqx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzqx;->zzdD()Z

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(ZZ)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzra;->zzaad:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzM(I)V
    .locals 3

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzra;->zzme()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzra;->zzmd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaas:Lcom/google/android/gms/internal/zzgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgk;->zzfA()Lcom/google/android/gms/internal/zzgl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaas:Lcom/google/android/gms/internal/zzgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgk;->zzfA()Lcom/google/android/gms/internal/zzgl;

    move-result-object v0

    const-string v1, "close_type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzgl;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "closetype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzra;->zztt:Lcom/google/android/gms/internal/zzqh;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzra;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public zzM(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzra;->zzaai:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzN(Z)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/zzra;->zzaao:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/zzra;->zzaao:I

    iget v0, p0, Lcom/google/android/gms/internal/zzra;->zzaao:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaac:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaac:Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzhM()V

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzgl;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzvY:Lcom/google/android/gms/internal/zzqd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqd;->zzlf()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzra;->setContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaac:Lcom/google/android/gms/ads/internal/overlay/zze;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzra;->zzus:Lcom/google/android/gms/internal/zzeg;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaaf:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaad:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzOV:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzra;->zzaah:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzpp;->zzm(Lcom/google/android/gms/internal/zzqw;)Z

    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzra;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaab:Lcom/google/android/gms/internal/zzqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqx;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzra;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzra;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaai:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaaj:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaak:Lcom/google/android/gms/internal/zzrb;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzra;->zzd(Lcom/google/android/gms/internal/zzgl;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaal:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzra;->zzaao:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdj()Lcom/google/android/gms/internal/zzir;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzir;->zze(Lcom/google/android/gms/internal/zzqw;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzra;->zzmj()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzcy$zza;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzcy$zza;->zzxl:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaal:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzcy$zza;->zzxl:Z

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzra;->zzP(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzeg;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzra;->zzus:Lcom/google/android/gms/internal/zzeg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->requestLayout()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrb;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaak:Lcom/google/android/gms/internal/zzrb;

    if-eqz v0, :cond_0

    const-string v0, "Attempt to create multiple AdWebViewVideoControllers."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->e(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzra;->zzaak:Lcom/google/android/gms/internal/zzrb;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method zza(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzra;->zzWO:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpe;->zza(Ljava/lang/Boolean;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected zza(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzra;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaab:Lcom/google/android/gms/internal/zzqx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaab:Lcom/google/android/gms/internal/zzqx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    :cond_0
    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzpo;->zzQ(Ljava/util/Map;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzra;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not convert parameters to JSON."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzra;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzra;->zzaac:Lcom/google/android/gms/ads/internal/overlay/zze;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzgy;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzra;->zzaan:Lcom/google/android/gms/internal/zzgy;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaab:Lcom/google/android/gms/internal/zzqx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaab:Lcom/google/android/gms/internal/zzqx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzqx;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    :cond_0
    return-void
.end method

.method public zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(window.AFMA_ReceiveMessage || function() {})(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Dispatching AFMA event: "

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzra;->zzbm(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zzbC()Lcom/google/android/gms/internal/zzeg;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzus:Lcom/google/android/gms/internal/zzeg;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzbV()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaaj:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaaa:Lcom/google/android/gms/ads/internal/zzu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaaa:Lcom/google/android/gms/ads/internal/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzu;->zzbV()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzbW()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaaj:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaaa:Lcom/google/android/gms/ads/internal/zzu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaaa:Lcom/google/android/gms/ads/internal/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzu;->zzbW()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzbi(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v2

    const-string v3, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzpe;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v2, "Could not call loadUrl. "

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public zzbj(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzra;->zzOV:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zzbl(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzra;->loadUrl(Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zzbm(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzl()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzkq()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzra;->zzmc()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzkq()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzra;->zza(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void

    :cond_1
    const-string v1, "javascript:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzra;->zzbl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "javascript:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzra;->zzbl(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public zzby()Lcom/google/android/gms/ads/internal/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzsv:Lcom/google/android/gms/ads/internal/zze;

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzra;->zzaau:Lcom/google/android/gms/ads/internal/overlay/zze;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzhK()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaaq:Lcom/google/android/gms/internal/zzgj;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaas:Lcom/google/android/gms/internal/zzgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgk;->zzfA()Lcom/google/android/gms/internal/zzgl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzOW:Lcom/google/android/gms/internal/zzgj;

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aes2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzgj;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaas:Lcom/google/android/gms/internal/zzgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgk;->zzfA()Lcom/google/android/gms/internal/zzgl;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgh;->zzb(Lcom/google/android/gms/internal/zzgl;)Lcom/google/android/gms/internal/zzgj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaaq:Lcom/google/android/gms/internal/zzgj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaas:Lcom/google/android/gms/internal/zzgk;

    const-string v1, "native:view_show"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzra;->zzaaq:Lcom/google/android/gms/internal/zzgj;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzgk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzra;->zztt:Lcom/google/android/gms/internal/zzqh;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzra;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public zzj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzra;->zzbm(Ljava/lang/String;)V

    return-void
.end method

.method zzkq()Ljava/lang/Boolean;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzWO:Ljava/lang/Boolean;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzlA()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Destroying WebView!"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzra;->zzkC()V

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzra$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzra$2;-><init>(Lcom/google/android/gms/internal/zzra;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzlB()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaai:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzlC()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaaj:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzlD()Lcom/google/android/gms/internal/zzqv;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzlE()Lcom/google/android/gms/internal/zzgj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzOW:Lcom/google/android/gms/internal/zzgj;

    return-object v0
.end method

.method public zzlF()Lcom/google/android/gms/internal/zzgk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaas:Lcom/google/android/gms/internal/zzgk;

    return-object v0
.end method

.method public zzlG()Lcom/google/android/gms/internal/zzrb;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaak:Lcom/google/android/gms/internal/zzrb;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzlH()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzra;->zzaao:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzlI()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzvY:Lcom/google/android/gms/internal/zzqd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqd;->zzle()V

    return-void
.end method

.method public zzlJ()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaar:Lcom/google/android/gms/internal/zzgj;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaas:Lcom/google/android/gms/internal/zzgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgk;->zzfA()Lcom/google/android/gms/internal/zzgl;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgh;->zzb(Lcom/google/android/gms/internal/zzgl;)Lcom/google/android/gms/internal/zzgj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaar:Lcom/google/android/gms/internal/zzgj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaas:Lcom/google/android/gms/internal/zzgk;

    const-string v1, "native:view_load"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzra;->zzaar:Lcom/google/android/gms/internal/zzgj;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzgk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)V

    :cond_0
    return-void
.end method

.method public zzlK()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaat:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public zzlL()Lcom/google/android/gms/internal/zzgy;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaan:Lcom/google/android/gms/internal/zzgy;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzlM()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzra;->setBackgroundColor(I)V

    return-void
.end method

.method public zzlp()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzra;->zzmd()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzra;->zztt:Lcom/google/android/gms/internal/zzqh;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzra;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public zzlq()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "app_muted"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzpo;->zzcs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzpo;->zzcq()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzpo;->zzS(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzra;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public zzlr()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzZZ:Lcom/google/android/gms/internal/zzra$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzra$zza;->zzlr()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public zzls()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzZZ:Lcom/google/android/gms/internal/zzra$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzra$zza;->zzls()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public zzlt()Lcom/google/android/gms/ads/internal/overlay/zze;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaac:Lcom/google/android/gms/ads/internal/overlay/zze;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzlu()Lcom/google/android/gms/ads/internal/overlay/zze;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaau:Lcom/google/android/gms/ads/internal/overlay/zze;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzlv()Lcom/google/android/gms/internal/zzqx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaab:Lcom/google/android/gms/internal/zzqx;

    return-object v0
.end method

.method public zzlw()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaad:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzlx()Lcom/google/android/gms/internal/zzaw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzGP:Lcom/google/android/gms/internal/zzaw;

    return-object v0
.end method

.method public zzly()Lcom/google/android/gms/internal/zzqh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->zztt:Lcom/google/android/gms/internal/zzqh;

    return-object v0
.end method

.method public zzlz()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->zzaaf:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzmb()Z
    .locals 8

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqx;->zzdD()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqx;->zzlO()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzra;->zzwo:Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzpo;->zza(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v1

    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/internal/zzqe;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v2

    iget v3, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/internal/zzqe;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzlr()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-nez v4, :cond_5

    :cond_2
    move v4, v2

    move v3, v1

    :goto_1
    iget v7, p0, Lcom/google/android/gms/internal/zzra;->zzMy:I

    if-ne v7, v1, :cond_3

    iget v7, p0, Lcom/google/android/gms/internal/zzra;->zzMz:I

    if-ne v7, v2, :cond_3

    iget v7, p0, Lcom/google/android/gms/internal/zzra;->zzMB:I

    if-ne v7, v3, :cond_3

    iget v7, p0, Lcom/google/android/gms/internal/zzra;->zzMC:I

    if-eq v7, v4, :cond_0

    :cond_3
    iget v7, p0, Lcom/google/android/gms/internal/zzra;->zzMy:I

    if-ne v7, v1, :cond_4

    iget v7, p0, Lcom/google/android/gms/internal/zzra;->zzMz:I

    if-eq v7, v2, :cond_6

    :cond_4
    move v7, v5

    :goto_2
    iput v1, p0, Lcom/google/android/gms/internal/zzra;->zzMy:I

    iput v2, p0, Lcom/google/android/gms/internal/zzra;->zzMz:I

    iput v3, p0, Lcom/google/android/gms/internal/zzra;->zzMB:I

    iput v4, p0, Lcom/google/android/gms/internal/zzra;->zzMC:I

    new-instance v0, Lcom/google/android/gms/internal/zzkw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzkw;-><init>(Lcom/google/android/gms/internal/zzqw;)V

    iget v5, v6, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Lcom/google/android/gms/internal/zzra;->zzwo:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzkw;->zza(IIIIFI)V

    move v0, v7

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzpo;->zzh(Landroid/app/Activity;)[I

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v3

    aget v7, v4, v0

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/zzqe;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v7

    aget v4, v4, v5

    invoke-virtual {v7, v6, v4}, Lcom/google/android/gms/internal/zzqe;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v4

    goto :goto_1

    :cond_6
    move v7, v0

    goto :goto_2
.end method

.method zzmf()Lcom/google/android/gms/internal/zzid;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzra$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzra$1;-><init>(Lcom/google/android/gms/internal/zzra;)V

    return-object v0
.end method

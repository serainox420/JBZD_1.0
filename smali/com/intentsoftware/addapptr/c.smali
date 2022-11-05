.class public Lcom/intentsoftware/addapptr/c;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/intentsoftware/addapptr/u;


# static fields
.field private static final MIN_ACCELEROMETER_RANGE:I = 0x13

.field private static activity:Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static globalTargetingInfo:Lcom/intentsoftware/addapptr/c/k;

.field private static googleAdvertisingIdString:Ljava/lang/String;

.field private static networkWhitelistForTargeting:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/intentsoftware/addapptr/AdNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private static options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accelerometer:Landroid/hardware/Sensor;

.field private final application:Landroid/app/Application;

.field private final configDownloader:Lcom/intentsoftware/addapptr/a/b;

.field private debugDialog:Landroid/app/AlertDialog;

.field private debugScreenEnabled:Z

.field private final delegate:Lcom/intentsoftware/addapptr/AATKit$Delegate;

.field private indexOfPlacementPausedForAd:I

.field private initialized:Z

.field private lastDownloadedConfig:Lcom/intentsoftware/addapptr/a/a;

.field private final placements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/intentsoftware/addapptr/s;",
            ">;"
        }
    .end annotation
.end field

.field private promoController:Lcom/intentsoftware/addapptr/w;

.field private final reporter:Lcom/intentsoftware/addapptr/x;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private shakeDetector:Lcom/intentsoftware/addapptr/c/i;

.field private shouldNotifyResume:Z

.field private showingDebugDialog:Z

.field private testId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/intentsoftware/addapptr/c/k;

    invoke-direct {v0}, Lcom/intentsoftware/addapptr/c/k;-><init>()V

    sput-object v0, Lcom/intentsoftware/addapptr/c;->globalTargetingInfo:Lcom/intentsoftware/addapptr/c/k;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/intentsoftware/addapptr/c;->networkWhitelistForTargeting:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Lcom/intentsoftware/addapptr/AATKit$Delegate;Z)V
    .locals 6

    .prologue
    const/16 v5, 0xe

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/c;->shouldNotifyResume:Z

    .line 68
    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/c;->debugScreenEnabled:Z

    .line 86
    iput-object p1, p0, Lcom/intentsoftware/addapptr/c;->application:Landroid/app/Application;

    .line 88
    invoke-static {p1}, Lcom/intentsoftware/addapptr/c/b;->init(Landroid/app/Application;)V

    .line 89
    invoke-static {p1}, Lcom/intentsoftware/addapptr/c/e;->init(Landroid/content/Context;)V

    .line 90
    invoke-static {p1}, Lcom/intentsoftware/addapptr/c/j;->init(Landroid/app/Application;)V

    .line 91
    invoke-static {p1}, Lcom/intentsoftware/addapptr/c/h;->init(Landroid/content/Context;)V

    .line 92
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 93
    :cond_0
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->ADMOB:Lcom/intentsoftware/addapptr/AdNetwork;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/ad;->remove(Lcom/intentsoftware/addapptr/AdNetwork;)V

    .line 94
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->ADX:Lcom/intentsoftware/addapptr/AdNetwork;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/ad;->remove(Lcom/intentsoftware/addapptr/AdNetwork;)V

    .line 95
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->DFP:Lcom/intentsoftware/addapptr/AdNetwork;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/ad;->remove(Lcom/intentsoftware/addapptr/AdNetwork;)V

    .line 96
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->PUBMATIC:Lcom/intentsoftware/addapptr/AdNetwork;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/ad;->remove(Lcom/intentsoftware/addapptr/AdNetwork;)V

    .line 99
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_2

    .line 100
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->ADCOLONY:Lcom/intentsoftware/addapptr/AdNetwork;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/ad;->remove(Lcom/intentsoftware/addapptr/AdNetwork;)V

    .line 101
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->FLURRY:Lcom/intentsoftware/addapptr/AdNetwork;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/ad;->remove(Lcom/intentsoftware/addapptr/AdNetwork;)V

    .line 104
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_6

    .line 105
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->FACEBOOK:Lcom/intentsoftware/addapptr/AdNetwork;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/ad;->remove(Lcom/intentsoftware/addapptr/AdNetwork;)V

    .line 110
    :cond_3
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_7

    .line 111
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->MILLENNIAL:Lcom/intentsoftware/addapptr/AdNetwork;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/ad;->remove(Lcom/intentsoftware/addapptr/AdNetwork;)V

    .line 112
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->LOOPME:Lcom/intentsoftware/addapptr/AdNetwork;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/ad;->remove(Lcom/intentsoftware/addapptr/AdNetwork;)V

    .line 123
    :cond_4
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/intentsoftware/addapptr/c;->options:Ljava/util/Map;

    .line 125
    const-string v0, "LOGCMD"

    const-string v1, "Yes"

    invoke-virtual {p0, v0, v1}, Lcom/intentsoftware/addapptr/c;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p1}, Lcom/intentsoftware/addapptr/b/a;->init(Landroid/content/Context;)V

    .line 129
    new-instance v4, Lcom/intentsoftware/addapptr/aa;

    invoke-direct {v4}, Lcom/intentsoftware/addapptr/aa;-><init>()V

    .line 130
    new-instance v2, Lcom/intentsoftware/addapptr/ab;

    invoke-direct {v2}, Lcom/intentsoftware/addapptr/ab;-><init>()V

    .line 131
    new-instance v3, Lcom/intentsoftware/addapptr/ac;

    invoke-direct {v3}, Lcom/intentsoftware/addapptr/ac;-><init>()V

    .line 132
    new-instance v0, Lcom/intentsoftware/addapptr/w;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/w;-><init>(Lcom/intentsoftware/addapptr/c;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/c;->promoController:Lcom/intentsoftware/addapptr/w;

    .line 134
    new-instance v0, Lcom/intentsoftware/addapptr/a/b;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/c;->createConfigDownloaderListener()Lcom/intentsoftware/addapptr/a/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intentsoftware/addapptr/a/b;-><init>(Lcom/intentsoftware/addapptr/a/c;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/c;->configDownloader:Lcom/intentsoftware/addapptr/a/b;

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_8

    .line 137
    new-instance v0, Lcom/intentsoftware/addapptr/y;

    iget-object v5, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/intentsoftware/addapptr/y;-><init>(Landroid/app/Application;Lcom/intentsoftware/addapptr/ab;Lcom/intentsoftware/addapptr/ac;Lcom/intentsoftware/addapptr/aa;Ljava/util/List;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/c;->reporter:Lcom/intentsoftware/addapptr/x;

    .line 141
    :goto_2
    iput-object p2, p0, Lcom/intentsoftware/addapptr/c;->delegate:Lcom/intentsoftware/addapptr/AATKit$Delegate;

    .line 142
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->obtainEncryptedAdvertisingId(Landroid/content/Context;)V

    .line 144
    if-eqz p3, :cond_5

    .line 145
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/c;->enableDebugScreen()V

    .line 147
    :cond_5
    return-void

    .line 106
    :cond_6
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->FACEBOOK:Lcom/intentsoftware/addapptr/AdNetwork;

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/c;->isNetworkEnabled(Lcom/intentsoftware/addapptr/AdNetwork;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    const-string v0, "AddApptr"

    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->setMediationService(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_7
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->MILLENNIAL:Lcom/intentsoftware/addapptr/AdNetwork;

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/c;->isNetworkEnabled(Lcom/intentsoftware/addapptr/AdNetwork;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    :try_start_0
    invoke-static {p1}, Lcom/millennialmedia/MMSDK;->initialize(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when initializing Millennial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 139
    :cond_8
    new-instance v0, Lcom/intentsoftware/addapptr/x;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/intentsoftware/addapptr/x;-><init>(Lcom/intentsoftware/addapptr/ab;Lcom/intentsoftware/addapptr/ac;Lcom/intentsoftware/addapptr/aa;Ljava/util/List;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/c;->reporter:Lcom/intentsoftware/addapptr/x;

    goto :goto_2
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/intentsoftware/addapptr/c;->googleAdvertisingIdString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 53
    sput-object p0, Lcom/intentsoftware/addapptr/c;->googleAdvertisingIdString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/intentsoftware/addapptr/c;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/c;->initialized:Z

    return p1
.end method

.method static synthetic access$200()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/intentsoftware/addapptr/c;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/c;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->handleActivityResume(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/c;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/c;->showingDebugDialog:Z

    return v0
.end method

.method static synthetic access$402(Lcom/intentsoftware/addapptr/c;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/c;->showingDebugDialog:Z

    return p1
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/c;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/c;->showDebugDialogInternal()V

    return-void
.end method

.method static synthetic access$602(Lcom/intentsoftware/addapptr/c;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/intentsoftware/addapptr/c;->debugDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$702(Lcom/intentsoftware/addapptr/c;Lcom/intentsoftware/addapptr/a/a;)Lcom/intentsoftware/addapptr/a/a;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/intentsoftware/addapptr/c;->lastDownloadedConfig:Lcom/intentsoftware/addapptr/a/a;

    return-object p1
.end method

.method static synthetic access$800(Lcom/intentsoftware/addapptr/c;Lcom/intentsoftware/addapptr/a/a;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->handleConfigDownload(Lcom/intentsoftware/addapptr/a/a;)V

    return-void
.end method

.method static synthetic access$900(Lcom/intentsoftware/addapptr/c;)Lcom/intentsoftware/addapptr/AATKit$Delegate;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->delegate:Lcom/intentsoftware/addapptr/AATKit$Delegate;

    return-object v0
.end method

.method private addConfigToAllPlacements(Lcom/intentsoftware/addapptr/b;)V
    .locals 4

    .prologue
    .line 762
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 763
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "promo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/intentsoftware/addapptr/s;->acceptsGeneralRules:Z

    if-eqz v2, :cond_0

    .line 767
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/b;->getSupportedPlacementSizes()Ljava/util/ArrayList;

    move-result-object v2

    .line 768
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getSize()Lcom/intentsoftware/addapptr/PlacementSize;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 769
    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/s;->addConfig(Lcom/intentsoftware/addapptr/b;)V

    goto :goto_0

    .line 772
    :cond_1
    return-void
.end method

.method private createConfigDownloaderListener()Lcom/intentsoftware/addapptr/a/c;
    .locals 1

    .prologue
    .line 706
    new-instance v0, Lcom/intentsoftware/addapptr/c$7;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/c$7;-><init>(Lcom/intentsoftware/addapptr/c;)V

    return-object v0
.end method

.method private distributeAdConfigWithSize(Lcom/intentsoftware/addapptr/a/a;)V
    .locals 5

    .prologue
    .line 745
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/a/a;->getAdConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/b;

    .line 746
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/b;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 747
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/b;->getSupportedPlacementSizes()Ljava/util/ArrayList;

    move-result-object v3

    .line 748
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/b;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/intentsoftware/addapptr/c;->findPlacementIdByName(Ljava/lang/String;)I

    move-result v1

    .line 749
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 750
    iget-object v4, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intentsoftware/addapptr/s;

    .line 751
    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/s;->getSize()Lcom/intentsoftware/addapptr/PlacementSize;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 752
    invoke-virtual {v1, v0}, Lcom/intentsoftware/addapptr/s;->addConfig(Lcom/intentsoftware/addapptr/b;)V

    goto :goto_0

    .line 756
    :cond_1
    invoke-direct {p0, v0}, Lcom/intentsoftware/addapptr/c;->addConfigToAllPlacements(Lcom/intentsoftware/addapptr/b;)V

    goto :goto_0

    .line 759
    :cond_2
    return-void
.end method

.method private distributePlacementConfig(Lcom/intentsoftware/addapptr/a/a;)V
    .locals 4

    .prologue
    .line 775
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/a/a;->getPlacementConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/t;

    .line 776
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/t;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/intentsoftware/addapptr/c;->findPlacementIdByName(Ljava/lang/String;)I

    move-result v1

    .line 778
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 779
    iget-object v3, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intentsoftware/addapptr/s;

    .line 780
    invoke-virtual {v1, v0}, Lcom/intentsoftware/addapptr/s;->onConfigDownloaded(Lcom/intentsoftware/addapptr/t;)V

    goto :goto_0

    .line 784
    :cond_1
    return-void
.end method

.method static getGlobalTargetingInfo()Lcom/intentsoftware/addapptr/c/k;
    .locals 1

    .prologue
    .line 824
    sget-object v0, Lcom/intentsoftware/addapptr/c;->globalTargetingInfo:Lcom/intentsoftware/addapptr/c/k;

    return-object v0
.end method

.method public static getGoogleAdvertisingIdString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 873
    sget-object v0, Lcom/intentsoftware/addapptr/c;->googleAdvertisingIdString:Ljava/lang/String;

    return-object v0
.end method

.method static getNetworkWhitelistForTargeting()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/intentsoftware/addapptr/AdNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    .line 853
    sget-object v0, Lcom/intentsoftware/addapptr/c;->networkWhitelistForTargeting:Ljava/util/Set;

    return-object v0
.end method

.method static getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 812
    sget-object v0, Lcom/intentsoftware/addapptr/c;->options:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 813
    const/4 v0, 0x0

    .line 815
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/intentsoftware/addapptr/c;->options:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private handleActivityPause()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->reporter:Lcom/intentsoftware/addapptr/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/x;->onPause(Z)V

    .line 608
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->promoController:Lcom/intentsoftware/addapptr/w;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/w;->onActivityPause()V

    .line 609
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->configDownloader:Lcom/intentsoftware/addapptr/a/b;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/a/b;->stop()V

    .line 610
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 611
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->onPause()V

    goto :goto_0

    .line 613
    :cond_0
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/c;->debugScreenEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c;->shakeDetector:Lcom/intentsoftware/addapptr/c/i;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 616
    :cond_1
    const-string v0, "TRIGSHUTDOWN"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    const-string v0, "Shutdown"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->writeLog(Ljava/lang/String;)V

    .line 619
    :cond_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->debugDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 620
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->debugDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/c;->debugDialog:Landroid/app/AlertDialog;

    .line 624
    :cond_3
    return-void
.end method

.method private handleActivityResume(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 579
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->promoController:Lcom/intentsoftware/addapptr/w;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/w;->onActivityResume()V

    .line 580
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->configDownloader:Lcom/intentsoftware/addapptr/a/b;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/a/b;->start()V

    .line 581
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->reporter:Lcom/intentsoftware/addapptr/x;

    invoke-virtual {v0, v2}, Lcom/intentsoftware/addapptr/x;->onResume(Z)V

    .line 583
    if-eqz p1, :cond_1

    .line 584
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 585
    iget-boolean v4, p0, Lcom/intentsoftware/addapptr/c;->shouldNotifyResume:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget v5, p0, Lcom/intentsoftware/addapptr/c;->indexOfPlacementPausedForAd:I

    if-ne v4, v5, :cond_0

    .line 586
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getSize()Lcom/intentsoftware/addapptr/PlacementSize;

    move-result-object v4

    sget-object v5, Lcom/intentsoftware/addapptr/PlacementSize;->Fullscreen:Lcom/intentsoftware/addapptr/PlacementSize;

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 587
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/intentsoftware/addapptr/ad/a;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/intentsoftware/addapptr/ad/a;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/intentsoftware/addapptr/b;->getNetwork()Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v4

    sget-object v5, Lcom/intentsoftware/addapptr/AdNetwork;->OPENX:Lcom/intentsoftware/addapptr/AdNetwork;

    if-ne v4, v5, :cond_0

    .line 588
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 592
    goto :goto_0

    .line 590
    :cond_0
    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/s;->onResume(Landroid/app/Activity;)V

    move v0, v1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->delegate:Lcom/intentsoftware/addapptr/AATKit$Delegate;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/c;->shouldNotifyResume:Z

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 596
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->delegate:Lcom/intentsoftware/addapptr/AATKit$Delegate;

    iget v1, p0, Lcom/intentsoftware/addapptr/c;->indexOfPlacementPausedForAd:I

    invoke-interface {v0, v1}, Lcom/intentsoftware/addapptr/AATKit$Delegate;->aatkitResumeAfterAd(I)V

    .line 597
    iput-boolean v2, p0, Lcom/intentsoftware/addapptr/c;->shouldNotifyResume:Z

    .line 600
    :cond_3
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/c;->debugScreenEnabled:Z

    if-eqz v0, :cond_4

    .line 601
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c;->shakeDetector:Lcom/intentsoftware/addapptr/c/i;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/c;->accelerometer:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 604
    :cond_4
    return-void
.end method

.method private handleConfigDownload(Lcom/intentsoftware/addapptr/a/a;)V
    .locals 2

    .prologue
    .line 730
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/a/a;->isGotIP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/a/a;->getIPaddr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/b/a;->setIP(Ljava/lang/String;)V

    .line 733
    :cond_0
    sget-object v0, Lcom/intentsoftware/addapptr/c;->options:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/a/a;->getOptions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 734
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->distributePlacementConfig(Lcom/intentsoftware/addapptr/a/a;)V

    .line 735
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->distributeAdConfigWithSize(Lcom/intentsoftware/addapptr/a/a;)V

    .line 737
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 738
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->configsFinishedDownloading()V

    goto :goto_0

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->promoController:Lcom/intentsoftware/addapptr/w;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/w;->onConfigDownloaded()V

    .line 742
    return-void
.end method

.method public static isOptionEnabled(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 819
    invoke-static {p0}, Lcom/intentsoftware/addapptr/c;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 820
    if-eqz v0, :cond_0

    const-string v1, "Yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPaused()Z
    .locals 1

    .prologue
    .line 808
    sget-object v0, Lcom/intentsoftware/addapptr/c;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private obtainEncryptedAdvertisingId(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/intentsoftware/addapptr/c$1;

    invoke-direct {v0, p0, p1}, Lcom/intentsoftware/addapptr/c$1;-><init>(Lcom/intentsoftware/addapptr/c;Landroid/content/Context;)V

    .line 182
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    return-void
.end method

.method private placementIdIsValid(I)Z
    .locals 3

    .prologue
    .line 627
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    .line 628
    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid placement id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    :cond_0
    return v0

    .line 627
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDebugDialogInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 484
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/intentsoftware/addapptr/c;->activity:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 486
    sget-object v0, Lcom/intentsoftware/addapptr/ae;->FULL_NAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 488
    sget-object v0, Lcom/intentsoftware/addapptr/c;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 489
    sget v2, Lcom/intentsoftware/addapptr/R$layout;->debug_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 490
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 491
    sget v0, Lcom/intentsoftware/addapptr/R$id;->debugDialogMessage:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 492
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/c;->getDebugInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    const-string v0, "Close"

    new-instance v3, Lcom/intentsoftware/addapptr/c$4;

    invoke-direct {v3, p0, v2}, Lcom/intentsoftware/addapptr/c$4;-><init>(Lcom/intentsoftware/addapptr/c;Landroid/view/View;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 506
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/c;->debugDialog:Landroid/app/AlertDialog;

    .line 507
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->debugDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 508
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->debugDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/intentsoftware/addapptr/c$5;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/c$5;-><init>(Lcom/intentsoftware/addapptr/c;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 516
    iput-boolean v4, p0, Lcom/intentsoftware/addapptr/c;->showingDebugDialog:Z

    .line 517
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->debugDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 518
    return-void
.end method


# virtual methods
.method addAdNetworkForKeywordTargeting(Lcom/intentsoftware/addapptr/AdNetwork;)V
    .locals 1

    .prologue
    .line 845
    sget-object v0, Lcom/intentsoftware/addapptr/c;->networkWhitelistForTargeting:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 846
    return-void
.end method

.method attachNativeAdToLayout(Lcom/intentsoftware/addapptr/ad/d;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 947
    invoke-interface {p1, p2}, Lcom/intentsoftware/addapptr/ad/d;->attachToLayout(Landroid/view/ViewGroup;)V

    .line 948
    return-void
.end method

.method createPlacement(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;)I
    .locals 5

    .prologue
    .line 186
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating new placement with name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    :cond_1
    const-string v0, "Placement name cannot be empty! Placement was NOT created!"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    const/4 v0, -0x1

    .line 239
    :goto_0
    return v0

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 195
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Placement with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_4
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Fullscreen:Lcom/intentsoftware/addapptr/PlacementSize;

    if-ne p2, v0, :cond_8

    .line 202
    new-instance v0, Lcom/intentsoftware/addapptr/o;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c;->application:Landroid/app/Application;

    invoke-direct {v0, p1, p2, v1}, Lcom/intentsoftware/addapptr/o;-><init>(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;Landroid/content/Context;)V

    move-object v1, v0

    .line 211
    :goto_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v1, p0}, Lcom/intentsoftware/addapptr/s;->addListener(Lcom/intentsoftware/addapptr/u;)V

    .line 214
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->lastDownloadedConfig:Lcom/intentsoftware/addapptr/a/a;

    if-eqz v0, :cond_d

    .line 215
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->lastDownloadedConfig:Lcom/intentsoftware/addapptr/a/a;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/a/a;->getPlacementConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/t;

    .line 216
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/t;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 217
    invoke-virtual {v1, v0}, Lcom/intentsoftware/addapptr/s;->onConfigDownloaded(Lcom/intentsoftware/addapptr/t;)V

    .line 222
    :cond_6
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->lastDownloadedConfig:Lcom/intentsoftware/addapptr/a/a;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/a/a;->getAdConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/b;

    .line 223
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/b;->getSupportedPlacementSizes()Ljava/util/ArrayList;

    move-result-object v3

    .line 224
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/b;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 225
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/b;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/s;->getSize()Lcom/intentsoftware/addapptr/PlacementSize;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 226
    invoke-virtual {v1, v0}, Lcom/intentsoftware/addapptr/s;->addConfig(Lcom/intentsoftware/addapptr/b;)V

    goto :goto_2

    .line 203
    :cond_8
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Native:Lcom/intentsoftware/addapptr/PlacementSize;

    if-ne p2, v0, :cond_9

    .line 204
    new-instance v0, Lcom/intentsoftware/addapptr/q;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c;->application:Landroid/app/Application;

    invoke-direct {v0, p1, p2, v1}, Lcom/intentsoftware/addapptr/q;-><init>(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;Landroid/content/Context;)V

    move-object v1, v0

    goto :goto_1

    .line 205
    :cond_9
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->MultiSizeBanner:Lcom/intentsoftware/addapptr/PlacementSize;

    if-ne p2, v0, :cond_a

    .line 206
    new-instance v0, Lcom/intentsoftware/addapptr/p;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c;->application:Landroid/app/Application;

    invoke-direct {v0, p1, p2, v1}, Lcom/intentsoftware/addapptr/p;-><init>(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;Landroid/content/Context;)V

    move-object v1, v0

    goto :goto_1

    .line 208
    :cond_a
    new-instance v0, Lcom/intentsoftware/addapptr/j;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c;->application:Landroid/app/Application;

    invoke-direct {v0, p1, p2, v1}, Lcom/intentsoftware/addapptr/j;-><init>(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;Landroid/content/Context;)V

    move-object v1, v0

    goto/16 :goto_1

    .line 228
    :cond_b
    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/s;->getSize()Lcom/intentsoftware/addapptr/PlacementSize;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "promo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-boolean v3, v1, Lcom/intentsoftware/addapptr/s;->acceptsGeneralRules:Z

    if-eqz v3, :cond_7

    .line 229
    invoke-virtual {v1, v0}, Lcom/intentsoftware/addapptr/s;->addConfig(Lcom/intentsoftware/addapptr/b;)V

    goto :goto_2

    .line 232
    :cond_c
    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/s;->configsFinishedDownloading()V

    .line 235
    :cond_d
    sget-object v0, Lcom/intentsoftware/addapptr/c;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_e

    .line 236
    sget-object v0, Lcom/intentsoftware/addapptr/c;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/intentsoftware/addapptr/s;->onResume(Landroid/app/Activity;)V

    .line 239
    :cond_e
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0
.end method

.method currentlyLoadingNativeAdsOnPlacement(I)I
    .locals 3

    .prologue
    .line 1005
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->placementIdIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 1007
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getSize()Lcom/intentsoftware/addapptr/PlacementSize;

    move-result-object v1

    sget-object v2, Lcom/intentsoftware/addapptr/PlacementSize;->Native:Lcom/intentsoftware/addapptr/PlacementSize;

    if-ne v1, v2, :cond_0

    .line 1008
    check-cast v0, Lcom/intentsoftware/addapptr/q;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/q;->getNumberOfCurrentlyLoadingNativeAds()I

    move-result v0

    .line 1015
    :goto_0
    return v0

    .line 1010
    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1011
    const-string v0, "currentlyLoadingNativeAdsOnPlacement method can only be called for native placement."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1015
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->promoController:Lcom/intentsoftware/addapptr/w;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/w;->destroy()V

    .line 886
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/c;->handleActivityPause()V

    .line 888
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 889
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->destroy()V

    goto :goto_0

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/c;->promoController:Lcom/intentsoftware/addapptr/w;

    .line 894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/c;->initialized:Z

    .line 895
    return-void
.end method

.method detachNativeAdFromLayout(Lcom/intentsoftware/addapptr/ad/d;)V
    .locals 0

    .prologue
    .line 951
    invoke-interface {p1}, Lcom/intentsoftware/addapptr/ad/d;->detachFromLayout()V

    .line 952
    return-void
.end method

.method disableDebugScreen()V
    .locals 2

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/c;->debugScreenEnabled:Z

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c;->shakeDetector:Lcom/intentsoftware/addapptr/c/i;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/c;->debugScreenEnabled:Z

    .line 525
    :cond_0
    return-void
.end method

.method disablePromo()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->promoController:Lcom/intentsoftware/addapptr/w;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/w;->disablePromo()V

    .line 543
    return-void
.end method

.method enableDebugScreen()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 449
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/c;->debugScreenEnabled:Z

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->application:Landroid/app/Application;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/intentsoftware/addapptr/c;->sensorManager:Landroid/hardware/SensorManager;

    .line 452
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/c;->accelerometer:Landroid/hardware/Sensor;

    .line 453
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->accelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->accelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    const/high16 v1, 0x41980000    # 19.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iput-boolean v2, p0, Lcom/intentsoftware/addapptr/c;->debugScreenEnabled:Z

    .line 458
    new-instance v0, Lcom/intentsoftware/addapptr/c/i;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c;->accelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/intentsoftware/addapptr/c/i;-><init>(F)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/c;->shakeDetector:Lcom/intentsoftware/addapptr/c/i;

    .line 459
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->shakeDetector:Lcom/intentsoftware/addapptr/c/i;

    new-instance v1, Lcom/intentsoftware/addapptr/c$2;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/c$2;-><init>(Lcom/intentsoftware/addapptr/c;)V

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/c/i;->setOnShakeListener(Lcom/intentsoftware/addapptr/c/i$a;)V

    .line 468
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c;->shakeDetector:Lcom/intentsoftware/addapptr/c/i;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/c;->accelerometer:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method enablePromo(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->promoController:Lcom/intentsoftware/addapptr/w;

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/w;->enablePromo(Z)I

    .line 538
    return-void
.end method

.method public fallbackOnResumeFromAd(Lcom/intentsoftware/addapptr/s;)V
    .locals 2

    .prologue
    .line 691
    sget-object v0, Lcom/intentsoftware/addapptr/c;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 692
    sget-object v0, Lcom/intentsoftware/addapptr/c;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/intentsoftware/addapptr/s;->onResume(Landroid/app/Activity;)V

    .line 694
    :cond_0
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/s;->isAutoreloaderActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/s;->reloadInternal()Z

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->promoController:Lcom/intentsoftware/addapptr/w;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/w;->onActivityResume()V

    .line 699
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->delegate:Lcom/intentsoftware/addapptr/AATKit$Delegate;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/c;->shouldNotifyResume:Z

    if-eqz v0, :cond_2

    .line 700
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->delegate:Lcom/intentsoftware/addapptr/AATKit$Delegate;

    iget v1, p0, Lcom/intentsoftware/addapptr/c;->indexOfPlacementPausedForAd:I

    invoke-interface {v0, v1}, Lcom/intentsoftware/addapptr/AATKit$Delegate;->aatkitResumeAfterAd(I)V

    .line 701
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/c;->shouldNotifyResume:Z

    .line 703
    :cond_2
    return-void
.end method

.method findPlacementIdByName(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 787
    const/4 v2, -0x1

    .line 789
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 790
    :cond_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    .line 792
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 794
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 800
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method getConfigDownloader()Lcom/intentsoftware/addapptr/a/b;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->configDownloader:Lcom/intentsoftware/addapptr/a/b;

    return-object v0
.end method

.method getDebugInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 902
    const-string v0, ""

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 905
    iget v1, p0, Lcom/intentsoftware/addapptr/c;->testId:I

    if-eqz v1, :cond_2

    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Using test ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/intentsoftware/addapptr/c;->testId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 910
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Currently loaded ads: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    iget-object v1, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 912
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getLoadedAdNames()Ljava/lang/String;

    move-result-object v2

    .line 913
    iget-object v4, v0, Lcom/intentsoftware/addapptr/s;->loader:Lcom/intentsoftware/addapptr/h;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/intentsoftware/addapptr/s;->loader:Lcom/intentsoftware/addapptr/h;

    invoke-virtual {v4}, Lcom/intentsoftware/addapptr/h;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 914
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Loading new ad."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 916
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 917
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getSize()Lcom/intentsoftware/addapptr/PlacementSize;

    move-result-object v2

    sget-object v4, Lcom/intentsoftware/addapptr/PlacementSize;->Fullscreen:Lcom/intentsoftware/addapptr/PlacementSize;

    if-eq v2, v4, :cond_1

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getSize()Lcom/intentsoftware/addapptr/PlacementSize;

    move-result-object v2

    sget-object v4, Lcom/intentsoftware/addapptr/PlacementSize;->Native:Lcom/intentsoftware/addapptr/PlacementSize;

    if-ne v2, v4, :cond_9

    .line 918
    :cond_1
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getLastShownAdName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getLastShownAdName()Ljava/lang/String;

    move-result-object v0

    .line 919
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t\t Last shown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v1, v0

    .line 921
    goto/16 :goto_1

    .line 908
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Live Mode\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 918
    :cond_3
    const-string v0, "None"

    goto :goto_2

    .line 923
    :cond_4
    invoke-static {}, Lcom/intentsoftware/addapptr/ad;->getDisabledNetworks()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nNetworks disabled from code:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 925
    invoke-static {}, Lcom/intentsoftware/addapptr/ad;->getDisabledNetworks()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/AdNetwork;

    .line 926
    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/c;->isNetworkEnabled(Lcom/intentsoftware/addapptr/AdNetwork;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 927
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/AdNetwork;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object v1, v0

    .line 929
    goto :goto_4

    .line 931
    :cond_5
    invoke-static {}, Lcom/intentsoftware/addapptr/ad;->getNetworksWithRemovedSdks()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nNetworks with removed SDKs:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 933
    invoke-static {}, Lcom/intentsoftware/addapptr/ad;->getNetworksWithRemovedSdks()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/AdNetwork;

    .line 934
    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/c;->isNetworkEnabled(Lcom/intentsoftware/addapptr/AdNetwork;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 935
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/AdNetwork;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    move-object v1, v0

    .line 937
    goto :goto_6

    .line 940
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nDevice type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 942
    return-object v0

    :cond_7
    move-object v0, v1

    goto :goto_7

    :cond_8
    move-object v0, v1

    goto :goto_5

    :cond_9
    move-object v0, v1

    goto/16 :goto_3
.end method

.method getNativeAd(I)Lcom/intentsoftware/addapptr/ad/d;
    .locals 3

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->placementIdIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 341
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get native ad for placement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    :cond_0
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getNativeAd()Lcom/intentsoftware/addapptr/ad/d;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    .line 346
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get native ad for placement id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed, placement ID is invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getNativeAdAdvertiser(Lcom/intentsoftware/addapptr/ad/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 975
    const-string v0, "advertiser"

    invoke-interface {p1, v0}, Lcom/intentsoftware/addapptr/ad/d;->getAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNativeAdBrandingLogo(Lcom/intentsoftware/addapptr/ad/d;)Landroid/view/View;
    .locals 1

    .prologue
    .line 983
    invoke-interface {p1}, Lcom/intentsoftware/addapptr/ad/d;->getBrandingLogo()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getNativeAdCallToAction(Lcom/intentsoftware/addapptr/ad/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 971
    const-string v0, "cta"

    invoke-interface {p1, v0}, Lcom/intentsoftware/addapptr/ad/d;->getAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNativeAdDescription(Lcom/intentsoftware/addapptr/ad/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 959
    const-string v0, "description"

    invoke-interface {p1, v0}, Lcom/intentsoftware/addapptr/ad/d;->getAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNativeAdIconUrl(Lcom/intentsoftware/addapptr/ad/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 967
    const-string v0, "icon"

    invoke-interface {p1, v0}, Lcom/intentsoftware/addapptr/ad/d;->getAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNativeAdImageUrl(Lcom/intentsoftware/addapptr/ad/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 963
    const-string v0, "main"

    invoke-interface {p1, v0}, Lcom/intentsoftware/addapptr/ad/d;->getAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNativeAdNetwork(Lcom/intentsoftware/addapptr/ad/d;)Lcom/intentsoftware/addapptr/AdNetwork;
    .locals 1

    .prologue
    .line 1041
    invoke-interface {p1}, Lcom/intentsoftware/addapptr/ad/d;->getNetwork()Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method getNativeAdRating(Lcom/intentsoftware/addapptr/ad/d;)Lcom/intentsoftware/addapptr/ad/NativeAd$a;
    .locals 1

    .prologue
    .line 979
    invoke-interface {p1}, Lcom/intentsoftware/addapptr/ad/d;->getRating()Lcom/intentsoftware/addapptr/ad/NativeAd$a;

    move-result-object v0

    return-object v0
.end method

.method getNativeAdTitle(Lcom/intentsoftware/addapptr/ad/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 955
    const-string v0, "headline"

    invoke-interface {p1, v0}, Lcom/intentsoftware/addapptr/ad/d;->getAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNativeAdType(Lcom/intentsoftware/addapptr/ad/d;)Lcom/intentsoftware/addapptr/ad/NativeAd$Type;
    .locals 1

    .prologue
    .line 988
    invoke-interface {p1}, Lcom/intentsoftware/addapptr/ad/d;->getAdType()Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    move-result-object v0

    return-object v0
.end method

.method getPlacementView(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 322
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->placementIdIsValid(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 323
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 324
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get view for placement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    :cond_0
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getPlacementView()Landroid/view/View;

    move-result-object v0

    .line 334
    :cond_1
    :goto_0
    return-object v0

    .line 329
    :cond_2
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get view for placement id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed, placement ID is invalid!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method getPlacements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/intentsoftware/addapptr/s;",
            ">;"
        }
    .end annotation

    .prologue
    .line 881
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    return-object v0
.end method

.method getTestAppId()I
    .locals 1

    .prologue
    .line 445
    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->getTestAppId()I

    move-result v0

    return v0
.end method

.method hasAdForPlacement(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 355
    .line 357
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->placementIdIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 359
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 360
    :cond_0
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Has ad for placement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), result:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    :cond_1
    :goto_0
    return v1

    .line 364
    :cond_2
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has ad for placement id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " call failed, placement ID is invalid!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method isFrequencyCapReachedForNativePlacement(I)Z
    .locals 3

    .prologue
    .line 1019
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->placementIdIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1020
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 1021
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getSize()Lcom/intentsoftware/addapptr/PlacementSize;

    move-result-object v1

    sget-object v2, Lcom/intentsoftware/addapptr/PlacementSize;->Native:Lcom/intentsoftware/addapptr/PlacementSize;

    if-ne v1, v2, :cond_0

    .line 1022
    check-cast v0, Lcom/intentsoftware/addapptr/q;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/q;->isFrequencyCapReached()Z

    move-result v0

    .line 1029
    :goto_0
    return v0

    .line 1024
    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1025
    const-string v0, "isFrequencyCapReachedForNativePlacement method can only be called for native placement."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNativeAdExpired(Lcom/intentsoftware/addapptr/ad/d;)Z
    .locals 1

    .prologue
    .line 1033
    invoke-interface {p1}, Lcom/intentsoftware/addapptr/ad/d;->isExpired()Z

    move-result v0

    return v0
.end method

.method isNativeAdReady(Lcom/intentsoftware/addapptr/ad/d;)Z
    .locals 1

    .prologue
    .line 1037
    invoke-interface {p1}, Lcom/intentsoftware/addapptr/ad/d;->isReady()Z

    move-result v0

    return v0
.end method

.method isNetworkEnabled(Lcom/intentsoftware/addapptr/AdNetwork;)Z
    .locals 1

    .prologue
    .line 532
    invoke-static {p1}, Lcom/intentsoftware/addapptr/ad;->isNetworkEnabled(Lcom/intentsoftware/addapptr/AdNetwork;)Z

    move-result v0

    return v0
.end method

.method onActivityPause()V
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x0

    sput-object v0, Lcom/intentsoftware/addapptr/c;->activity:Landroid/app/Activity;

    .line 573
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/c;->initialized:Z

    if-eqz v0, :cond_0

    .line 574
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/c;->handleActivityPause()V

    .line 576
    :cond_0
    return-void
.end method

.method onActivityResume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 554
    sput-object p1, Lcom/intentsoftware/addapptr/c;->activity:Landroid/app/Activity;

    .line 556
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/c;->initialized:Z

    if-eqz v0, :cond_0

    .line 557
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->handleActivityResume(Landroid/app/Activity;)V

    .line 560
    :cond_0
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/c;->showingDebugDialog:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 561
    new-instance v0, Lcom/intentsoftware/addapptr/c$6;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/c$6;-><init>(Lcom/intentsoftware/addapptr/c;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 568
    :cond_1
    return-void
.end method

.method public onEmptyAdShown(Lcom/intentsoftware/addapptr/s;)V
    .locals 2

    .prologue
    .line 671
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showing empty ad on placement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->delegate:Lcom/intentsoftware/addapptr/AATKit$Delegate;

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->delegate:Lcom/intentsoftware/addapptr/AATKit$Delegate;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/intentsoftware/addapptr/AATKit$Delegate;->aatkitShowingEmpty(I)V

    .line 677
    :cond_1
    return-void
.end method

.method public onPauseForAd(Lcom/intentsoftware/addapptr/s;)V
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->promoController:Lcom/intentsoftware/addapptr/w;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/w;->onAdShown()V

    .line 662
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->delegate:Lcom/intentsoftware/addapptr/AATKit$Delegate;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->delegate:Lcom/intentsoftware/addapptr/AATKit$Delegate;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/intentsoftware/addapptr/AATKit$Delegate;->aatkitPauseForAd(I)V

    .line 664
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/intentsoftware/addapptr/c;->indexOfPlacementPausedForAd:I

    .line 665
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/c;->shouldNotifyResume:Z

    .line 667
    :cond_0
    return-void
.end method

.method public onPlacementAdLoad(Lcom/intentsoftware/addapptr/s;)V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->delegate:Lcom/intentsoftware/addapptr/AATKit$Delegate;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/s;->getSize()Lcom/intentsoftware/addapptr/PlacementSize;

    move-result-object v0

    sget-object v1, Lcom/intentsoftware/addapptr/PlacementSize;->MultiSizeBanner:Lcom/intentsoftware/addapptr/PlacementSize;

    if-eq v0, v1, :cond_0

    .line 644
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->delegate:Lcom/intentsoftware/addapptr/AATKit$Delegate;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/intentsoftware/addapptr/AATKit$Delegate;->aatkitHaveAd(I)V

    .line 646
    :cond_0
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "promo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->promoController:Lcom/intentsoftware/addapptr/w;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/w;->onAdLoaded()V

    .line 649
    :cond_1
    return-void
.end method

.method public onPlacementAdLoadFail(Lcom/intentsoftware/addapptr/s;)V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->delegate:Lcom/intentsoftware/addapptr/AATKit$Delegate;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->delegate:Lcom/intentsoftware/addapptr/AATKit$Delegate;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/intentsoftware/addapptr/AATKit$Delegate;->aatkitNoAd(I)V

    .line 639
    :cond_0
    return-void
.end method

.method public onPlacementHaveAdWithBannerView(Lcom/intentsoftware/addapptr/s;Lcom/intentsoftware/addapptr/k;)V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->delegate:Lcom/intentsoftware/addapptr/AATKit$Delegate;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->delegate:Lcom/intentsoftware/addapptr/AATKit$Delegate;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/intentsoftware/addapptr/AATKit$Delegate;->aatkitHaveAdForPlacementWithBannerView(ILcom/intentsoftware/addapptr/k;)V

    .line 656
    :cond_0
    return-void
.end method

.method public onUserEarnedIncentive(Lcom/intentsoftware/addapptr/s;)V
    .locals 2

    .prologue
    .line 681
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incentive earned for placement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->delegate:Lcom/intentsoftware/addapptr/AATKit$Delegate;

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->delegate:Lcom/intentsoftware/addapptr/AATKit$Delegate;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/intentsoftware/addapptr/AATKit$Delegate;->aatkitUserEarnedIncentive(I)V

    .line 687
    :cond_1
    return-void
.end method

.method preparePromo()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->promoController:Lcom/intentsoftware/addapptr/w;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/w;->preparePromo()I

    .line 547
    return-void
.end method

.method reloadPlacement(IZ)Z
    .locals 3

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->placementIdIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 307
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reload placement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), force:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    :cond_0
    invoke-virtual {v0, p2}, Lcom/intentsoftware/addapptr/s;->reload(Z)Z

    move-result v0

    .line 315
    :goto_0
    return v0

    .line 312
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reload placement id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " call failed, placement ID is invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeAdNetworkForKeywordTargeting(Lcom/intentsoftware/addapptr/AdNetwork;)V
    .locals 1

    .prologue
    .line 849
    sget-object v0, Lcom/intentsoftware/addapptr/c;->networkWhitelistForTargeting:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 850
    return-void
.end method

.method reportAdSpaceForNativePlacement(I)V
    .locals 3

    .prologue
    .line 992
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->placementIdIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 994
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getSize()Lcom/intentsoftware/addapptr/PlacementSize;

    move-result-object v1

    sget-object v2, Lcom/intentsoftware/addapptr/PlacementSize;->Native:Lcom/intentsoftware/addapptr/PlacementSize;

    if-ne v1, v2, :cond_1

    .line 995
    check-cast v0, Lcom/intentsoftware/addapptr/q;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/q;->onAdspace()V

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 997
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    const-string v0, "reportAdSpaceForNativePlacement method can only be called for native placement."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setFakeAdResponse(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->configDownloader:Lcom/intentsoftware/addapptr/a/b;

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/a/b;->setFakeAdResponse(Ljava/lang/String;)V

    .line 878
    return-void
.end method

.method setInitialRules(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->configDownloader:Lcom/intentsoftware/addapptr/a/b;

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/a/b;->setInitialRules(Ljava/lang/String;)V

    .line 866
    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    .prologue
    .line 898
    invoke-static {p1}, Lcom/intentsoftware/addapptr/c/c;->setUserSetLogLevel(I)V

    .line 899
    return-void
.end method

.method setNetworkEnabled(Lcom/intentsoftware/addapptr/AdNetwork;Z)V
    .locals 0

    .prologue
    .line 528
    invoke-static {p1, p2}, Lcom/intentsoftware/addapptr/ad;->setNetworkEnabled(Lcom/intentsoftware/addapptr/AdNetwork;Z)V

    .line 529
    return-void
.end method

.method setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 857
    sget-object v0, Lcom/intentsoftware/addapptr/c;->options:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    return-void
.end method

.method setPlacementAutoreloadInterval(II)V
    .locals 3

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->placementIdIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 276
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set placement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") autoreload interval to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    :cond_0
    invoke-virtual {v0, p2}, Lcom/intentsoftware/addapptr/s;->setPlacementAutoreloadInterval(I)V

    .line 285
    :cond_1
    :goto_0
    return-void

    .line 281
    :cond_2
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set placement id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " autoreload interval call failed, placement ID is invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setPlacementContentGravity(II)V
    .locals 3

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->placementIdIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 428
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set placement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") content gravity, gravity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    :cond_0
    invoke-virtual {v0, p2}, Lcom/intentsoftware/addapptr/s;->setGravity(I)V

    .line 437
    :cond_1
    :goto_0
    return-void

    .line 433
    :cond_2
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set placement id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " content gravity call failed, placement ID is invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setPlacementDefaultImage(ILandroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->placementIdIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 400
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set placement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") default image."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    :cond_0
    invoke-virtual {v0, p2}, Lcom/intentsoftware/addapptr/s;->setDefaultImage(Landroid/graphics/Bitmap;)V

    .line 409
    :cond_1
    :goto_0
    return-void

    .line 405
    :cond_2
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set placement id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " default image call failed, placement ID is invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setPlacementDefaultImageResource(II)V
    .locals 3

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->placementIdIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 414
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set placement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") default image resource."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    :cond_0
    invoke-virtual {v0, p2}, Lcom/intentsoftware/addapptr/s;->setDefaultImageResource(I)V

    .line 423
    :cond_1
    :goto_0
    return-void

    .line 419
    :cond_2
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set placement id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " default image resource call failed, placement ID is invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setRuleCachingEnabled(Z)V
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->configDownloader:Lcom/intentsoftware/addapptr/a/b;

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/a/b;->setRuleCachingEnabled(Z)V

    .line 870
    return-void
.end method

.method setTargetingInfo(Ljava/lang/Integer;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 828
    if-nez p1, :cond_1

    .line 829
    sget-object v0, Lcom/intentsoftware/addapptr/c;->globalTargetingInfo:Lcom/intentsoftware/addapptr/c/k;

    invoke-virtual {v0, p2}, Lcom/intentsoftware/addapptr/c/k;->setMap(Ljava/util/Map;)V

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/intentsoftware/addapptr/c;->placementIdIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 831
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 832
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set targeting info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "for placement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    :cond_2
    invoke-virtual {v0, p2}, Lcom/intentsoftware/addapptr/s;->setTargetingInfo(Ljava/util/Map;)V

    goto :goto_0

    .line 837
    :cond_3
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set targeting info for placement id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed, placement ID is invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setTestAppId(I)V
    .locals 0

    .prologue
    .line 440
    iput p1, p0, Lcom/intentsoftware/addapptr/c;->testId:I

    .line 441
    invoke-static {p1}, Lcom/intentsoftware/addapptr/b/a;->setTestAppId(I)V

    .line 442
    return-void
.end method

.method shouldLogAATKitCalls()Z
    .locals 1

    .prologue
    .line 861
    const-string v0, "LOGCMD"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method showDebugDialog()V
    .locals 2

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/c;->showingDebugDialog:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/intentsoftware/addapptr/c;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/intentsoftware/addapptr/c;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    sget-object v0, Lcom/intentsoftware/addapptr/c;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/intentsoftware/addapptr/c$3;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/c$3;-><init>(Lcom/intentsoftware/addapptr/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 481
    :cond_0
    return-void
.end method

.method showPlacement(I)Z
    .locals 4

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->placementIdIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 374
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 375
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->show()Z

    move-result v1

    .line 376
    const-string v2, "LOGSHOW"

    invoke-static {v2}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Show called on placement:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getSize()Lcom/intentsoftware/addapptr/PlacementSize;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 379
    :cond_0
    if-nez v1, :cond_3

    const-string v2, "TRIGDISPLAYFAILED"

    invoke-static {v2}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 380
    const-string v2, "displayFailed"

    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/h;->writeLog(Ljava/lang/String;)V

    .line 384
    :cond_1
    :goto_0
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Show placement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), success:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 394
    :goto_1
    return v0

    .line 381
    :cond_3
    if-eqz v1, :cond_1

    const-string v2, "TRIGSOMETHINGTOSHOW"

    invoke-static {v2}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    const-string v2, "successful call of \"show\""

    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/h;->writeLog(Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_4
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show placement id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " call failed, placement ID is invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method showPromo(Z)Z
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->promoController:Lcom/intentsoftware/addapptr/w;

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/w;->showPromo(Z)Z

    move-result v0

    return v0
.end method

.method startPlacementAutoReload(I)V
    .locals 3

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->placementIdIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 246
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start placement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") auto reload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    :cond_0
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->startPlacementAutoReload()V

    .line 255
    :cond_1
    :goto_0
    return-void

    .line 251
    :cond_2
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start placement id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " auto reload call failed, placement ID is invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method startPlacementAutoReload(II)V
    .locals 3

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->placementIdIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 261
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start placement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") auto reload with reload time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    :cond_0
    invoke-virtual {v0, p2}, Lcom/intentsoftware/addapptr/s;->setPlacementAutoreloadInterval(I)V

    .line 265
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->startPlacementAutoReload()V

    .line 271
    :cond_1
    :goto_0
    return-void

    .line 267
    :cond_2
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start placement id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " auto reload with seconds call failed, placement ID is invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method stopPlacementAutoReload(I)V
    .locals 3

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/c;->placementIdIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c;->placements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 291
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop placement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") auto reload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    :cond_0
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->stopPlacementAutoReload()V

    .line 300
    :cond_1
    :goto_0
    return-void

    .line 296
    :cond_2
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop placement id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " auto reload call failed, placement ID is invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

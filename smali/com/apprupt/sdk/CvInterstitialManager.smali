.class Lcom/apprupt/sdk/CvInterstitialManager;
.super Ljava/lang/Object;
.source "CvInterstitialManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvInterstitialManager$CvInterstitialInstanceHolder;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/CvInterstitialManager;->a:Landroid/content/Context;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/apprupt/sdk/CvInterstitialManager;->b:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvInterstitialManager;->c:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvInterstitialManager;->d:Ljava/lang/String;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/apprupt/sdk/CvInterstitialManager$1;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/apprupt/sdk/CvInterstitialManager;-><init>()V

    return-void
.end method

.method static a()Lcom/apprupt/sdk/CvInterstitialManager;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/apprupt/sdk/CvInterstitialManager$CvInterstitialInstanceHolder;->a:Lcom/apprupt/sdk/CvInterstitialManager;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;ILcom/apprupt/sdk/CvContentManager$PreloaderListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    sget-object v7, Lcom/apprupt/sdk/CvSDK;->c:Lcom/apprupt/sdk/CvMediation;

    new-instance v0, Lcom/apprupt/sdk/CvInterstitialManager$1;

    move-object v1, p0

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/apprupt/sdk/CvInterstitialManager$1;-><init>(Lcom/apprupt/sdk/CvInterstitialManager;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/apprupt/sdk/CvContentManager$PreloaderListener;)V

    invoke-virtual {v7, v0}, Lcom/apprupt/sdk/CvMediation;->a(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method

.method a(Landroid/content/Context;ILcom/apprupt/sdk/CvSDK$CvInterstitialListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 69
    sget-object v7, Lcom/apprupt/sdk/CvSDK;->c:Lcom/apprupt/sdk/CvMediation;

    new-instance v0, Lcom/apprupt/sdk/CvInterstitialManager$2;

    move-object v1, p0

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/apprupt/sdk/CvInterstitialManager$2;-><init>(Lcom/apprupt/sdk/CvInterstitialManager;ILjava/lang/String;Ljava/lang/String;Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Lcom/apprupt/sdk/CvMediation;->a(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method b()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

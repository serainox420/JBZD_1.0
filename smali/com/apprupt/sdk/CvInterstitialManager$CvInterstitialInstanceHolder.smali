.class Lcom/apprupt/sdk/CvInterstitialManager$CvInterstitialInstanceHolder;
.super Ljava/lang/Object;
.source "CvInterstitialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvInterstitialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CvInterstitialInstanceHolder"
.end annotation


# static fields
.field static final a:Lcom/apprupt/sdk/CvInterstitialManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/apprupt/sdk/CvInterstitialManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apprupt/sdk/CvInterstitialManager;-><init>(Lcom/apprupt/sdk/CvInterstitialManager$1;)V

    sput-object v0, Lcom/apprupt/sdk/CvInterstitialManager$CvInterstitialInstanceHolder;->a:Lcom/apprupt/sdk/CvInterstitialManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

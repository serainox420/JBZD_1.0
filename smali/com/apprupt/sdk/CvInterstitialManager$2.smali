.class Lcom/apprupt/sdk/CvInterstitialManager$2;
.super Ljava/lang/Object;
.source "CvInterstitialManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInterstitialManager;->a(Landroid/content/Context;ILcom/apprupt/sdk/CvSDK$CvInterstitialListener;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/apprupt/sdk/CvInterstitialManager;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvInterstitialManager;ILjava/lang/String;Ljava/lang/String;Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/apprupt/sdk/CvInterstitialManager$2;->f:Lcom/apprupt/sdk/CvInterstitialManager;

    iput p2, p0, Lcom/apprupt/sdk/CvInterstitialManager$2;->a:I

    iput-object p3, p0, Lcom/apprupt/sdk/CvInterstitialManager$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/apprupt/sdk/CvInterstitialManager$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/apprupt/sdk/CvInterstitialManager$2;->d:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    iput-object p6, p0, Lcom/apprupt/sdk/CvInterstitialManager$2;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/apprupt/sdk/CvInterstitialManager$2$1;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvInterstitialManager$2$1;-><init>(Lcom/apprupt/sdk/CvInterstitialManager$2;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 100
    return-void
.end method

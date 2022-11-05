.class Lcom/apprupt/sdk/CvInterstitialAdWrapper$2$1;
.super Ljava/lang/Object;
.source "CvInterstitialAdWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInterstitialAdWrapper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvInterstitialAdWrapper$2;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvInterstitialAdWrapper$2;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$2$1;->a:Lcom/apprupt/sdk/CvInterstitialAdWrapper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$2$1;->a:Lcom/apprupt/sdk/CvInterstitialAdWrapper$2;

    iget-object v0, v0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$2;->a:Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->a(Lcom/apprupt/sdk/CvInterstitialAdWrapper;)V

    .line 79
    return-void
.end method

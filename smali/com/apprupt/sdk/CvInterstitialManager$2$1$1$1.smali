.class Lcom/apprupt/sdk/CvInterstitialManager$2$1$1$1;
.super Ljava/lang/Object;
.source "CvInterstitialManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInterstitialManager$2$1$1;->a(Lcom/apprupt/sdk/mediation/AdWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/mediation/AdWrapper;

.field final synthetic b:Lcom/apprupt/sdk/CvInterstitialManager$2$1$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvInterstitialManager$2$1$1;Lcom/apprupt/sdk/mediation/AdWrapper;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/apprupt/sdk/CvInterstitialManager$2$1$1$1;->b:Lcom/apprupt/sdk/CvInterstitialManager$2$1$1;

    iput-object p2, p0, Lcom/apprupt/sdk/CvInterstitialManager$2$1$1$1;->a:Lcom/apprupt/sdk/mediation/AdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialManager$2$1$1$1;->a:Lcom/apprupt/sdk/mediation/AdWrapper;

    check-cast v0, Lcom/apprupt/sdk/mediation/InterstitialAdWrapper;

    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/InterstitialAdWrapper;->b()V

    .line 91
    return-void
.end method

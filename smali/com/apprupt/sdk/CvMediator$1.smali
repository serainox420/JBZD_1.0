.class Lcom/apprupt/sdk/CvMediator$1;
.super Ljava/lang/Object;
.source "CvMediator.java"

# interfaces
.implements Lcom/apprupt/sdk/mediation/InterstitialAdWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvMediator;->a(Lcom/apprupt/sdk/mediation/AdWrapper$Listener;)Lcom/apprupt/sdk/mediation/AdWrapper$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

.field final synthetic b:Lcom/apprupt/sdk/CvMediator;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvMediator;Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediator$1;->b:Lcom/apprupt/sdk/CvMediator;

    iput-object p2, p0, Lcom/apprupt/sdk/CvMediator$1;->a:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediator$1;->a:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    invoke-interface {v0}, Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;->cvInterstitialFirstTap()V

    .line 83
    return-void
.end method

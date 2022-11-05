.class public Lcom/apprupt/sdk/CvAdapter;
.super Ljava/lang/Object;
.source "CvAdapter.java"

# interfaces
.implements Lcom/apprupt/sdk/mediation/Adapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/apprupt/sdk/mediation/Adapter$Info;->APPRUPT:Lcom/apprupt/sdk/mediation/Adapter$Info;

    invoke-virtual {v0}, Lcom/apprupt/sdk/mediation/Adapter$Info;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public a(Lcom/apprupt/sdk/mediation/Mediator;)Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/apprupt/sdk/mediation/Mediator;)Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public c(Lcom/apprupt/sdk/mediation/Mediator;)V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/apprupt/sdk/CvInlineAdWrapper;

    check-cast p1, Lcom/apprupt/sdk/CvMediator;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/CvInlineAdWrapper;-><init>(Lcom/apprupt/sdk/mediation/Adapter;Lcom/apprupt/sdk/CvMediator;)V

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->k()V

    .line 46
    return-void
.end method

.method public d(Lcom/apprupt/sdk/mediation/Mediator;)V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    check-cast p1, Lcom/apprupt/sdk/CvMediator;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;-><init>(Lcom/apprupt/sdk/mediation/Adapter;Lcom/apprupt/sdk/CvMediator;)V

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->k()V

    .line 51
    return-void
.end method

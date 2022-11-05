.class public abstract Lcom/apprupt/sdk/InterstitialEvent;
.super Lcom/apprupt/sdk/BaseEvent;
.source "InterstitialEvent.java"


# instance fields
.field protected a:Lcom/apprupt/sdk/mediation/InterstitialAdWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/apprupt/sdk/BaseEvent;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/InterstitialEvent;->a:Lcom/apprupt/sdk/mediation/InterstitialAdWrapper;

    return-void
.end method


# virtual methods
.method protected abstract d()V
.end method

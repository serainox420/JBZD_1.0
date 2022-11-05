.class Lcom/apprupt/sdk/InterstitialEvent$1$1;
.super Ljava/lang/Object;
.source "InterstitialEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/InterstitialEvent$1;->a(Lcom/apprupt/sdk/mediation/AdWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/mediation/AdWrapper;

.field final synthetic b:Lcom/apprupt/sdk/InterstitialEvent$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/InterstitialEvent$1;Lcom/apprupt/sdk/mediation/AdWrapper;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/apprupt/sdk/InterstitialEvent$1$1;->b:Lcom/apprupt/sdk/InterstitialEvent$1;

    iput-object p2, p0, Lcom/apprupt/sdk/InterstitialEvent$1$1;->a:Lcom/apprupt/sdk/mediation/AdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/apprupt/sdk/InterstitialEvent$1$1;->b:Lcom/apprupt/sdk/InterstitialEvent$1;

    iget-object v1, v0, Lcom/apprupt/sdk/InterstitialEvent$1;->a:Lcom/apprupt/sdk/InterstitialEvent;

    iget-object v0, p0, Lcom/apprupt/sdk/InterstitialEvent$1$1;->a:Lcom/apprupt/sdk/mediation/AdWrapper;

    check-cast v0, Lcom/apprupt/sdk/mediation/InterstitialAdWrapper;

    iput-object v0, v1, Lcom/apprupt/sdk/InterstitialEvent;->a:Lcom/apprupt/sdk/mediation/InterstitialAdWrapper;

    .line 36
    iget-object v0, p0, Lcom/apprupt/sdk/InterstitialEvent$1$1;->b:Lcom/apprupt/sdk/InterstitialEvent$1;

    iget-object v0, v0, Lcom/apprupt/sdk/InterstitialEvent$1;->a:Lcom/apprupt/sdk/InterstitialEvent;

    iget-object v0, v0, Lcom/apprupt/sdk/InterstitialEvent;->a:Lcom/apprupt/sdk/mediation/InterstitialAdWrapper;

    new-instance v1, Lcom/apprupt/sdk/InterstitialEvent$1$1$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/InterstitialEvent$1$1$1;-><init>(Lcom/apprupt/sdk/InterstitialEvent$1$1;)V

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/mediation/InterstitialAdWrapper;->a(Lcom/apprupt/sdk/mediation/InterstitialAdWrapper$Listener;)V

    .line 72
    return-void
.end method

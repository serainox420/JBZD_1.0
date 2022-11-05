.class Lcom/apprupt/sdk/InterstitialEvent$1;
.super Ljava/lang/Object;
.source "InterstitialEvent.java"

# interfaces
.implements Lcom/apprupt/sdk/CvMediator$Completion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/InterstitialEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/InterstitialEvent;


# virtual methods
.method public a(Lcom/apprupt/sdk/mediation/AdWrapper;)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/apprupt/sdk/InterstitialEvent$1$1;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/InterstitialEvent$1$1;-><init>(Lcom/apprupt/sdk/InterstitialEvent$1;Lcom/apprupt/sdk/mediation/AdWrapper;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 74
    iget-object v0, p0, Lcom/apprupt/sdk/InterstitialEvent$1;->a:Lcom/apprupt/sdk/InterstitialEvent;

    invoke-virtual {v0}, Lcom/apprupt/sdk/InterstitialEvent;->d()V

    .line 75
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/apprupt/sdk/InterstitialEvent$1;->a:Lcom/apprupt/sdk/InterstitialEvent;

    invoke-virtual {v0, p1}, Lcom/apprupt/sdk/InterstitialEvent;->a(Ljava/lang/String;)V

    .line 28
    return-void
.end method

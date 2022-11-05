.class Lcom/apprupt/sdk/BannerEvent$1;
.super Ljava/lang/Object;
.source "BannerEvent.java"

# interfaces
.implements Lcom/apprupt/sdk/CvMediator$Completion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/BannerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/BannerEvent;


# virtual methods
.method public a(Lcom/apprupt/sdk/mediation/AdWrapper;)V
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    .line 29
    new-instance v0, Lcom/apprupt/sdk/BannerEvent$1$1;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/BannerEvent$1$1;-><init>(Lcom/apprupt/sdk/BannerEvent$1;Lcom/apprupt/sdk/mediation/InlineAdWrapper;)V

    invoke-interface {p1, v0}, Lcom/apprupt/sdk/mediation/InlineAdWrapper;->a(Ljava/lang/Runnable;)V

    .line 35
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/apprupt/sdk/BannerEvent$1;->a:Lcom/apprupt/sdk/BannerEvent;

    invoke-virtual {v0, p1}, Lcom/apprupt/sdk/BannerEvent;->a(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.class Lcom/apprupt/sdk/BannerEvent$1$1;
.super Ljava/lang/Object;
.source "BannerEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/BannerEvent$1;->a(Lcom/apprupt/sdk/mediation/AdWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

.field final synthetic b:Lcom/apprupt/sdk/BannerEvent$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/BannerEvent$1;Lcom/apprupt/sdk/mediation/InlineAdWrapper;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/apprupt/sdk/BannerEvent$1$1;->b:Lcom/apprupt/sdk/BannerEvent$1;

    iput-object p2, p0, Lcom/apprupt/sdk/BannerEvent$1$1;->a:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/apprupt/sdk/BannerEvent$1$1;->b:Lcom/apprupt/sdk/BannerEvent$1;

    iget-object v0, v0, Lcom/apprupt/sdk/BannerEvent$1;->a:Lcom/apprupt/sdk/BannerEvent;

    iget-object v1, p0, Lcom/apprupt/sdk/BannerEvent$1$1;->a:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    invoke-interface {v1}, Lcom/apprupt/sdk/mediation/InlineAdWrapper;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/BannerEvent;->a(Landroid/view/View;)V

    .line 33
    return-void
.end method

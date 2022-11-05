.class Lcom/apprupt/sdk/MRAIDView$7;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView;->onDetachedFromWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/MRAIDView;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/MRAIDView;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$7;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$7;->a:Lcom/apprupt/sdk/MRAIDView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apprupt/sdk/MRAIDView;->b(Lcom/apprupt/sdk/MRAIDView;Z)Z

    .line 370
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$7;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->i(Lcom/apprupt/sdk/MRAIDView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 371
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$7;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->i(Lcom/apprupt/sdk/MRAIDView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 372
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$7;->a:Lcom/apprupt/sdk/MRAIDView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apprupt/sdk/MRAIDView;->a(Lcom/apprupt/sdk/MRAIDView;Ljava/util/Timer;)Ljava/util/Timer;

    .line 373
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$7;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->j(Lcom/apprupt/sdk/MRAIDView;)V

    .line 374
    return-void
.end method

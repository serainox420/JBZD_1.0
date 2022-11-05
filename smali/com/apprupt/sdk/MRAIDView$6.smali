.class Lcom/apprupt/sdk/MRAIDView$6;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView;->onAttachedToWindow()V
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
    .line 333
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$6;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 336
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$6;->a:Lcom/apprupt/sdk/MRAIDView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/MRAIDView;->b(Lcom/apprupt/sdk/MRAIDView;Z)Z

    .line 337
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$6;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->i(Lcom/apprupt/sdk/MRAIDView;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$6;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->i(Lcom/apprupt/sdk/MRAIDView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 339
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$6;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->i(Lcom/apprupt/sdk/MRAIDView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$6;->a:Lcom/apprupt/sdk/MRAIDView;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/apprupt/sdk/MRAIDView;->a(Lcom/apprupt/sdk/MRAIDView;Ljava/util/Timer;)Ljava/util/Timer;

    .line 342
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$6;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->i(Lcom/apprupt/sdk/MRAIDView;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/MRAIDView$6$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/MRAIDView$6$1;-><init>(Lcom/apprupt/sdk/MRAIDView$6;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 348
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$6;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->invalidate()V

    .line 349
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$6$2;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/MRAIDView$6$2;-><init>(Lcom/apprupt/sdk/MRAIDView$6;)V

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method

.class Lcom/apprupt/sdk/AdView$11;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/apprupt/sdk/AdView;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView;J)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$11;->b:Lcom/apprupt/sdk/AdView;

    iput-wide p2, p0, Lcom/apprupt/sdk/AdView$11;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 638
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$11;->b:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->i(Lcom/apprupt/sdk/AdView;)V

    .line 639
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$11;->b:Lcom/apprupt/sdk/AdView;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/apprupt/sdk/AdView;->b(Lcom/apprupt/sdk/AdView;Ljava/util/Timer;)Ljava/util/Timer;

    .line 640
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$11;->b:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->n(Lcom/apprupt/sdk/AdView;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/AdView$11$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/AdView$11$1;-><init>(Lcom/apprupt/sdk/AdView$11;)V

    iget-wide v2, p0, Lcom/apprupt/sdk/AdView$11;->a:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 659
    return-void
.end method

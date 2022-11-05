.class Lcom/apprupt/sdk/AdView$2;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/AdView;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$2;->a:Lcom/apprupt/sdk/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 279
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$2;->a:Lcom/apprupt/sdk/AdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/AdView;->a(Lcom/apprupt/sdk/AdView;Z)Z

    .line 280
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$2;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->c(Lcom/apprupt/sdk/AdView;)V

    .line 281
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$2;->a:Lcom/apprupt/sdk/AdView;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/apprupt/sdk/AdView;->a(Lcom/apprupt/sdk/AdView;Ljava/util/Timer;)Ljava/util/Timer;

    .line 282
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$2;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->e(Lcom/apprupt/sdk/AdView;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/AdView$2$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/AdView$2$1;-><init>(Lcom/apprupt/sdk/AdView$2;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 293
    return-void
.end method

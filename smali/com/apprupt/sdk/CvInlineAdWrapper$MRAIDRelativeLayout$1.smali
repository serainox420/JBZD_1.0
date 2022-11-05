.class Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;
.super Ljava/lang/Object;
.source "CvInlineAdWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->a(Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->a(Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 91
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->a(Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;Ljava/util/Timer;)Ljava/util/Timer;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->a(Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;Ljava/util/Timer;)Ljava/util/Timer;

    .line 94
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->a(Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1;-><init>(Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 109
    return-void
.end method

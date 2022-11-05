.class Lcom/apprupt/sdk/CvInlineAdWrapper$2;
.super Ljava/lang/Object;
.source "CvInlineAdWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/mediation/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/mediation/Size;

.field final synthetic b:Lcom/apprupt/sdk/CvInlineAdWrapper;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvInlineAdWrapper;Lcom/apprupt/sdk/mediation/Size;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$2;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    iput-object p2, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$2;->a:Lcom/apprupt/sdk/mediation/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$2;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->c(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$2;->a:Lcom/apprupt/sdk/mediation/Size;

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->a(Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;Lcom/apprupt/sdk/mediation/Size;)Lcom/apprupt/sdk/mediation/Size;

    .line 175
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$2;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->c(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->requestLayout()V

    .line 176
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$2;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->c(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->invalidate()V

    .line 177
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/apprupt/sdk/CvInlineAdWrapper$2$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvInlineAdWrapper$2$1;-><init>(Lcom/apprupt/sdk/CvInlineAdWrapper$2;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 192
    return-void
.end method

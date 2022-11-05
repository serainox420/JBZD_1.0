.class Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1$1;
.super Ljava/lang/Object;
.source "CvInlineAdWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 100
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->a(Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;Ljava/util/Timer;)Ljava/util/Timer;

    .line 101
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    invoke-static {v0, v2}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->a(Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;Z)Z

    .line 102
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->requestLayout()V

    .line 103
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->invalidate()V

    .line 104
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    iget-object v0, v0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->a:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->b(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "REPEATING MEASUREMENT!!!!!!!!!!!!!!"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 105
    return-void
.end method

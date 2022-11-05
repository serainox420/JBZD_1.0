.class Lcom/apprupt/sdk/CvInlineAdWrapper$2$1$1;
.super Ljava/lang/Object;
.source "CvInlineAdWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInlineAdWrapper$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvInlineAdWrapper$2$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvInlineAdWrapper$2$1;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$2$1$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$2$1$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$2$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvInlineAdWrapper$2$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$2;

    iget-object v0, v0, Lcom/apprupt/sdk/CvInlineAdWrapper$2;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->c(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/apprupt/sdk/AdView;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 185
    check-cast v0, Lcom/apprupt/sdk/AdView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/AdView;->requestLayout()V

    .line 186
    check-cast v1, Lcom/apprupt/sdk/AdView;

    invoke-virtual {v1}, Lcom/apprupt/sdk/AdView;->invalidate()V

    .line 188
    :cond_0
    return-void
.end method

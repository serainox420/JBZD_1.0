.class Lcom/apprupt/sdk/CvOverlayActivity$1$1;
.super Ljava/lang/Object;
.source "CvOverlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvOverlayActivity$1;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvOverlayActivity$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvOverlayActivity$1;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/apprupt/sdk/CvOverlayActivity$1$1;->a:Lcom/apprupt/sdk/CvOverlayActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/apprupt/sdk/CvOverlayActivity$1$1;->a:Lcom/apprupt/sdk/CvOverlayActivity$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvOverlayActivity$1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/apprupt/sdk/CvOverlayActivity$1$1;->a:Lcom/apprupt/sdk/CvOverlayActivity$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvOverlayActivity$1;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/apprupt/sdk/CvOverlayActivity$1$1;->a:Lcom/apprupt/sdk/CvOverlayActivity$1;

    iget-object v1, v1, Lcom/apprupt/sdk/CvOverlayActivity$1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 101
    :cond_0
    return-void
.end method

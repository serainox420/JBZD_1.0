.class Lcom/apprupt/sdk/CvInlineAdWrapper$3;
.super Ljava/lang/Object;
.source "CvInlineAdWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInlineAdWrapper;->c(Lcom/apprupt/sdk/mediation/Size;)V
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
    .line 249
    iput-object p1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$3;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    iput-object p2, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$3;->a:Lcom/apprupt/sdk/mediation/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$3;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->c(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$3;->a:Lcom/apprupt/sdk/mediation/Size;

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->a(Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;Lcom/apprupt/sdk/mediation/Size;)Lcom/apprupt/sdk/mediation/Size;

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$3;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/MRAIDView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 255
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$3;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v1}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/MRAIDView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 256
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$3;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->c(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$3;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v1}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/MRAIDView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 261
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$3;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->d(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/CvExpandActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$3;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/MRAIDView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvContext;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvContext;->b()V

    .line 263
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$3;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->d(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/CvExpandActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvExpandActivity;->finish()V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$3;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/CvInlineAdWrapper;Lcom/apprupt/sdk/CvExpandActivity;)Lcom/apprupt/sdk/CvExpandActivity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    :goto_1
    new-instance v0, Lcom/apprupt/sdk/CvInlineAdWrapper$3$1;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvInlineAdWrapper$3$1;-><init>(Lcom/apprupt/sdk/CvInlineAdWrapper$3;)V

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;)V

    .line 275
    return-void

    .line 266
    :catch_0
    move-exception v0

    goto :goto_1

    .line 258
    :catch_1
    move-exception v0

    goto :goto_0
.end method

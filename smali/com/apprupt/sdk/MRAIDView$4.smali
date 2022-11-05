.class Lcom/apprupt/sdk/MRAIDView$4;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView;-><init>(Landroid/content/Context;Lcom/apprupt/sdk/CvAdWrapper;ZLjava/lang/Runnable;)V
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
    .line 261
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$4;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 264
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$4;->a:Lcom/apprupt/sdk/MRAIDView;

    const-string v1, "http://cv.apprupt.com"

    iget-object v2, p0, Lcom/apprupt/sdk/MRAIDView$4;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v2}, Lcom/apprupt/sdk/MRAIDView;->h(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/CvAdWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apprupt/sdk/CvAdWrapper;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/apprupt/sdk/MRAIDView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

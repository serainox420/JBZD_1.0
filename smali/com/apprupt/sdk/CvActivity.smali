.class public Lcom/apprupt/sdk/CvActivity;
.super Lcom/apprupt/sdk/CvBaseActivityImpl;
.source "CvActivity.java"


# instance fields
.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/apprupt/sdk/CvBaseActivityImpl;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvActivity;->e:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/apprupt/sdk/CvBaseActivityImpl;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-static {}, Lcom/apprupt/sdk/CvSDK;->c()V

    .line 14
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/apprupt/sdk/CvBaseActivityImpl;->onPause()V

    .line 30
    invoke-static {}, Lcom/apprupt/sdk/CvSDK;->a()V

    .line 31
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/apprupt/sdk/CvBaseActivityImpl;->onResume()V

    .line 19
    invoke-static {p0}, Lcom/apprupt/sdk/CvSDK;->b(Landroid/app/Activity;)V

    .line 20
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvActivity;->e:Z

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Lcom/apprupt/sdk/CvSDK;->c()V

    .line 23
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvActivity;->e:Z

    .line 25
    return-void
.end method

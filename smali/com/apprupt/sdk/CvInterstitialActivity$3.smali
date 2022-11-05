.class Lcom/apprupt/sdk/CvInterstitialActivity$3;
.super Ljava/lang/Object;
.source "CvInterstitialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInterstitialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvInterstitialActivity;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/apprupt/sdk/CvInterstitialActivity$3;->a:Lcom/apprupt/sdk/CvInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity$3;->a:Lcom/apprupt/sdk/CvInterstitialActivity;

    iget-object v1, p0, Lcom/apprupt/sdk/CvInterstitialActivity$3;->a:Lcom/apprupt/sdk/CvInterstitialActivity;

    invoke-static {v1}, Lcom/apprupt/sdk/CvInterstitialActivity;->b(Lcom/apprupt/sdk/CvInterstitialActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

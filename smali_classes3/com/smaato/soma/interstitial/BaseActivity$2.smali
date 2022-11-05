.class Lcom/smaato/soma/interstitial/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/interstitial/BaseActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/interstitial/BaseActivity;


# direct methods
.method constructor <init>(Lcom/smaato/soma/interstitial/BaseActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/smaato/soma/interstitial/BaseActivity$2;->a:Lcom/smaato/soma/interstitial/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/smaato/soma/interstitial/BaseActivity$2$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/interstitial/BaseActivity$2$1;-><init>(Lcom/smaato/soma/interstitial/BaseActivity$2;)V

    .line 82
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/BaseActivity$2$1;->c()Ljava/lang/Object;

    .line 83
    return-void
.end method

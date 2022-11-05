.class Lcom/smaato/soma/ExpandedBannerActivity$8;
.super Ljava/lang/Object;
.source "ExpandedBannerActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/ExpandedBannerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/ExpandedBannerActivity;


# direct methods
.method constructor <init>(Lcom/smaato/soma/ExpandedBannerActivity;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/smaato/soma/ExpandedBannerActivity$8;->a:Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 458
    new-instance v0, Lcom/smaato/soma/ExpandedBannerActivity$8$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smaato/soma/ExpandedBannerActivity$8$1;-><init>(Lcom/smaato/soma/ExpandedBannerActivity$8;Landroid/view/View;ILandroid/view/KeyEvent;)V

    .line 477
    invoke-virtual {v0}, Lcom/smaato/soma/ExpandedBannerActivity$8$1;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 458
    return v0
.end method

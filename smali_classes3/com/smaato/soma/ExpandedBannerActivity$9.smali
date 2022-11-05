.class Lcom/smaato/soma/ExpandedBannerActivity$9;
.super Ljava/lang/Object;
.source "ExpandedBannerActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 481
    iput-object p1, p0, Lcom/smaato/soma/ExpandedBannerActivity$9;->a:Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 484
    new-instance v0, Lcom/smaato/soma/ExpandedBannerActivity$9$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/smaato/soma/ExpandedBannerActivity$9$1;-><init>(Lcom/smaato/soma/ExpandedBannerActivity$9;Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 500
    invoke-virtual {v0}, Lcom/smaato/soma/ExpandedBannerActivity$9$1;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 484
    return v0
.end method

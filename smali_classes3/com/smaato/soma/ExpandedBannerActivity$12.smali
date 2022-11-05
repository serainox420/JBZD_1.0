.class Lcom/smaato/soma/ExpandedBannerActivity$12;
.super Ljava/lang/Object;
.source "ExpandedBannerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/ExpandedBannerActivity;->h()V
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
    .line 663
    iput-object p1, p0, Lcom/smaato/soma/ExpandedBannerActivity$12;->a:Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity$12;->a:Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-static {v0}, Lcom/smaato/soma/ExpandedBannerActivity;->c(Lcom/smaato/soma/ExpandedBannerActivity;)Lcom/smaato/soma/internal/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/e/a;->reload()V

    .line 667
    return-void
.end method

.class Lcom/smartadserver/android/library/ui/SASPlayerActivity$1;
.super Landroid/widget/RelativeLayout;
.source "SASPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASPlayerActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$1;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 75
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 76
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$1;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->a(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$1;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->b(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)V

    .line 78
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$1;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->a(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$1;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->c(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$1;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->d(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$1;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->e(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$1;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v4}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->f(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartadserver/android/library/ui/SASVideoView;->a(IIII)V

    .line 80
    :cond_0
    return-void
.end method

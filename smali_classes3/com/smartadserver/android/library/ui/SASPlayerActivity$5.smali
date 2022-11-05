.class Lcom/smartadserver/android/library/ui/SASPlayerActivity$5;
.super Ljava/lang/Object;
.source "SASPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/ui/SASPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$5;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$5;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->a(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$5;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->i(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$5;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->j(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)V

    goto :goto_0
.end method

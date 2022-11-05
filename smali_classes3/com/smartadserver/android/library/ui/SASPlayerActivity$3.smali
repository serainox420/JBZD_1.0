.class Lcom/smartadserver/android/library/ui/SASPlayerActivity$3;
.super Ljava/lang/Object;
.source "SASPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$3;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 102
    const-string v0, "SASPlayerActivity"

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$3;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$3;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->h(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)V

    .line 105
    return-void
.end method

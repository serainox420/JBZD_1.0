.class Lcom/smartadserver/android/library/ui/SASPlayerActivity$2;
.super Ljava/lang/Object;
.source "SASPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 91
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$2;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$2;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->finish()V

    .line 95
    const/4 v0, 0x1

    return v0
.end method

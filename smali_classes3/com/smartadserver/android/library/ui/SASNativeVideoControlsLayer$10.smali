.class Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$10;
.super Ljava/lang/Object;
.source "SASNativeVideoControlsLayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$10;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 677
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$10;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$10;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->l(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setMuted(Z)V

    .line 678
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$10;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;I)V

    .line 679
    return-void

    .line 677
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

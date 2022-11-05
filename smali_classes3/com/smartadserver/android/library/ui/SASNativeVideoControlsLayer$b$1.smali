.class Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$1;
.super Ljava/lang/Object;
.source "SASNativeVideoControlsLayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;-><init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

.field final synthetic b:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$1;->b:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$1;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$1;->b:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->h(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$1;->b:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;I)V

    .line 336
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$1;->b:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;I)V

    .line 333
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$1;->b:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->a(Z)V

    goto :goto_0
.end method

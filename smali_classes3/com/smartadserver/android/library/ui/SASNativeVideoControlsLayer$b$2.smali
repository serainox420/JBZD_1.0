.class Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$2;
.super Ljava/lang/Object;
.source "SASNativeVideoControlsLayer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 374
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$2;->b:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$2;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$2;->b:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->a(IZ)V

    .line 379
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    .line 389
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 390
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$2;->b:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;II)V

    .line 391
    return-void
.end method

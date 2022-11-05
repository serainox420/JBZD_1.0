.class Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$4;
.super Ljava/lang/Object;
.source "SASNativeVideoControlsLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$4;->e:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    iput-boolean p2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$4;->a:Z

    iput p3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$4;->b:I

    iput-object p4, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$4;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$4;->a:Z

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$4;->e:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->a(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$4;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$4;->e:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->b(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$4;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$4;->e:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->c(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$4;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    return-void
.end method

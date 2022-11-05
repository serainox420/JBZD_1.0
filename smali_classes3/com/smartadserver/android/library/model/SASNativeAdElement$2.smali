.class Lcom/smartadserver/android/library/model/SASNativeAdElement$2;
.super Ljava/lang/Object;
.source "SASNativeAdElement.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/model/SASNativeAdElement;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/model/SASNativeAdElement;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/model/SASNativeAdElement;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement$2;->a:Lcom/smartadserver/android/library/model/SASNativeAdElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement$2;->a:Lcom/smartadserver/android/library/model/SASNativeAdElement;

    invoke-static {v0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->b(Lcom/smartadserver/android/library/model/SASNativeAdElement;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement$2;->a:Lcom/smartadserver/android/library/model/SASNativeAdElement;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/c;->a(Lcom/smartadserver/android/library/ui/c$a;)V

    .line 195
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement$2;->a:Lcom/smartadserver/android/library/model/SASNativeAdElement;

    invoke-static {v0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->b(Lcom/smartadserver/android/library/model/SASNativeAdElement;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement$2;->a:Lcom/smartadserver/android/library/model/SASNativeAdElement;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/c;->b(Lcom/smartadserver/android/library/ui/c$a;)V

    .line 201
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement$2;->a:Lcom/smartadserver/android/library/model/SASNativeAdElement;

    invoke-static {v0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->b(Lcom/smartadserver/android/library/model/SASNativeAdElement;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/model/SASNativeAdElement$2$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement$2$1;-><init>(Lcom/smartadserver/android/library/model/SASNativeAdElement$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 208
    :cond_0
    return-void
.end method

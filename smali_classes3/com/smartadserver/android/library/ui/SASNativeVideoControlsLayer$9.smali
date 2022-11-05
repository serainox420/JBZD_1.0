.class Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$9;
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
    .line 648
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$9;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$9;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;I)V

    .line 652
    return-void
.end method

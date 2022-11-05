.class Lcom/smartadserver/android/library/ui/SASAdView$27;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 3299
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$27;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3301
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$27;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setCloseButtonVisibility(I)V

    .line 3302
    return-void
.end method

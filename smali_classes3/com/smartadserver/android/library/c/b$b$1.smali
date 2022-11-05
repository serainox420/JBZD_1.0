.class Lcom/smartadserver/android/library/c/b$b$1;
.super Ljava/lang/Object;
.source "SASAdMobAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/c/b$b;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/b$b;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/b$b;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/smartadserver/android/library/c/b$b$1;->a:Lcom/smartadserver/android/library/c/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b$1;->a:Lcom/smartadserver/android/library/c/b$b;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/b$b;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->a(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->d()V

    .line 247
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b$1;->a:Lcom/smartadserver/android/library/c/b$b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b$b;->a(Lcom/smartadserver/android/library/c/b$b;)Lcom/google/android/gms/ads/formats/NativeAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->performClick()Z

    .line 248
    return-void
.end method

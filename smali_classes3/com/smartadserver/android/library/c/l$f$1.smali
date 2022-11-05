.class Lcom/smartadserver/android/library/c/l$f$1;
.super Ljava/lang/Object;
.source "SASMoPubAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/c/l$f;-><init>(Lcom/smartadserver/android/library/c/l;Lcom/mopub/nativeads/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/l;

.field final synthetic b:Lcom/smartadserver/android/library/c/l$f;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/l$f;Lcom/smartadserver/android/library/c/l;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/smartadserver/android/library/c/l$f$1;->b:Lcom/smartadserver/android/library/c/l$f;

    iput-object p2, p0, Lcom/smartadserver/android/library/c/l$f$1;->a:Lcom/smartadserver/android/library/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$f$1;->b:Lcom/smartadserver/android/library/c/l$f;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/l$f;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->a(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->d()V

    .line 400
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$f$1;->b:Lcom/smartadserver/android/library/c/l$f;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l$f;->a(Lcom/smartadserver/android/library/c/l$f;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 401
    return-void
.end method

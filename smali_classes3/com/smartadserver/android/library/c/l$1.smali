.class Lcom/smartadserver/android/library/c/l$1;
.super Ljava/lang/Object;
.source "SASMoPubAdapter.java"

# interfaces
.implements Lcom/smartadserver/android/library/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/c/l;->a(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;Ljava/util/HashMap;Lcom/smartadserver/android/library/c/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/l;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/l;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/smartadserver/android/library/c/l$1;->a:Lcom/smartadserver/android/library/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$1;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->c(Lcom/smartadserver/android/library/c/l;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/smartadserver/android/library/c/g$a;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$1;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->d(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/c/g$a;

    move-result-object v0

    return-object v0
.end method

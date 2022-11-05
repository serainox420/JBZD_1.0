.class Lcom/smartadserver/android/library/c/e$1;
.super Ljava/lang/Object;
.source "SASFacebookAdapter.java"

# interfaces
.implements Lcom/smartadserver/android/library/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/c/e;->a(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;Ljava/util/HashMap;Lcom/smartadserver/android/library/c/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/e;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/e;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/smartadserver/android/library/c/e$1;->a:Lcom/smartadserver/android/library/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$1;->a:Lcom/smartadserver/android/library/c/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/e;->e(Lcom/smartadserver/android/library/c/e;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/smartadserver/android/library/c/g$a;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$1;->a:Lcom/smartadserver/android/library/c/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/e;->f(Lcom/smartadserver/android/library/c/e;)Lcom/smartadserver/android/library/c/g$a;

    move-result-object v0

    return-object v0
.end method

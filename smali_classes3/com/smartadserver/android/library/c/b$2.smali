.class Lcom/smartadserver/android/library/c/b$2;
.super Ljava/lang/Object;
.source "SASAdMobAdapter.java"

# interfaces
.implements Lcom/smartadserver/android/library/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/c/b;->a(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;Ljava/util/HashMap;Lcom/smartadserver/android/library/c/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/b;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/b;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/smartadserver/android/library/c/b$2;->a:Lcom/smartadserver/android/library/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$2;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->e(Lcom/smartadserver/android/library/c/b;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/smartadserver/android/library/c/g$a;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$2;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->g(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/c/g$a;

    move-result-object v0

    return-object v0
.end method

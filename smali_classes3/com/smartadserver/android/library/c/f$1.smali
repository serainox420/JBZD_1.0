.class Lcom/smartadserver/android/library/c/f$1;
.super Ljava/lang/Object;
.source "SASInMobiAdapter.java"

# interfaces
.implements Lcom/smartadserver/android/library/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/c/f;->a(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;Ljava/util/HashMap;Lcom/smartadserver/android/library/c/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/smartadserver/android/library/c/f;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/f;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/smartadserver/android/library/c/f$1;->b:Lcom/smartadserver/android/library/c/f;

    iput-object p2, p0, Lcom/smartadserver/android/library/c/f$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/smartadserver/android/library/c/f$1;->a:Landroid/view/View;

    return-object v0
.end method

.method public b()Lcom/smartadserver/android/library/c/g$a;
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.class Lcom/smartadserver/android/library/c/b$b$2;
.super Ljava/lang/Object;
.source "SASAdMobAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/c/b$b;->a(Landroid/view/View;[Landroid/view/View;)V
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
    .line 426
    iput-object p1, p0, Lcom/smartadserver/android/library/c/b$b$2;->a:Lcom/smartadserver/android/library/c/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b$2;->a:Lcom/smartadserver/android/library/c/b$b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b$b;->b(Lcom/smartadserver/android/library/c/b$b;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b$2;->a:Lcom/smartadserver/android/library/c/b$b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b$b;->b(Lcom/smartadserver/android/library/c/b$b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 432
    :cond_0
    return-void
.end method

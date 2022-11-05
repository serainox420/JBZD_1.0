.class Lcom/smartadserver/android/library/ui/SASAdView$11;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->c(Ljava/lang/String;)Landroid/widget/ImageView;
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
    .line 2477
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$11;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2480
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$11;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$11;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/SASAdElement;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;)V

    .line 2481
    return-void
.end method

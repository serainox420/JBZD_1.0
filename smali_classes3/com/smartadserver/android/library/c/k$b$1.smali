.class Lcom/smartadserver/android/library/c/k$b$1;
.super Ljava/lang/Object;
.source "SASMillennialAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/c/k$b;->onClosed(Lcom/millennialmedia/InterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/k$b;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/k$b;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/smartadserver/android/library/c/k$b$1;->a:Lcom/smartadserver/android/library/c/k$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$b$1;->a:Lcom/smartadserver/android/library/c/k$b;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/k$b;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->b(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->n()V

    .line 134
    return-void
.end method

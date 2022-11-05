.class Lcom/smartadserver/android/library/c/b$c$1;
.super Ljava/lang/Object;
.source "SASAdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/c/b$c;->onRewardedVideoAdClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/b$c;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/b$c;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/smartadserver/android/library/c/b$c$1;->a:Lcom/smartadserver/android/library/c/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$c$1;->a:Lcom/smartadserver/android/library/c/b$c;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/b$c;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->n()V

    .line 178
    return-void
.end method

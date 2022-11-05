.class Lcom/smartadserver/android/library/c/l$d$1;
.super Ljava/lang/Object;
.source "SASMoPubAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/c/l$d;->onRewardedVideoClosed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/l$d;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/l$d;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/smartadserver/android/library/c/l$d$1;->a:Lcom/smartadserver/android/library/c/l$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$d$1;->a:Lcom/smartadserver/android/library/c/l$d;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/l$d;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->b(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->n()V

    .line 223
    return-void
.end method

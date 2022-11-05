.class Lcom/smartadserver/android/library/c/a$1$1;
.super Ljava/lang/Object;
.source "SASAdColonyAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/c/a$1;->onClosed(Lcom/adcolony/sdk/AdColonyInterstitial;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/a$1;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/a$1;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/smartadserver/android/library/c/a$1$1;->a:Lcom/smartadserver/android/library/c/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a$1$1;->a:Lcom/smartadserver/android/library/c/a$1;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/a$1;->a:Lcom/smartadserver/android/library/c/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/a;->b(Lcom/smartadserver/android/library/c/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->n()V

    .line 72
    return-void
.end method
